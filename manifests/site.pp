require boxen::environment
require homebrew

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }


  # core modules, needed for most things
  include dnsmasq
  include git
  include hub
  include openssl
  include postgresql
  include mysql
  include elasticsearch
  include phantomjs::1_9_0
  include mongodb
  include redis
  include autoconf

  # node versions
  include nodejs::v0_10
  class { 'nodejs::global': version => 'v0.10.13' }
  nodejs::module { 'bower':
    node_version => 'v0.10'
  }
  nodejs::module { 'grunt':
    node_version => 'v0.10'
  }
  nodejs::module { 'yo':
    node_version => 'v0.10'
  }

  # default ruby versions
  ruby::version { '1.9.3': }
  ruby::version { '2.0.0': }
  ruby::version { '2.1.0': }
  class { 'ruby::global':
    version => '2.0.0'
  }

  include heroku
  heroku::plugin { 'accounts':
    source => 'ddollar/heroku-accounts'
  }

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar',
      'coreutils',
      'autogen',
      'grc', 
      'boost', 
      'wget',
      'mobile-shell'
    ]:
  }
  include imagemagick

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
}
