class people::bumi {
  notify { 'class people::bumi declared': }

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"
  
  include people::bumi::applications

  osx_chsh { $::luser:
    shell   => '/opt/boxen/homebrew/bin/zsh',
    require => Package['zsh'],
  }
  file_line { 'add zsh to /etc/shells':
    path    => '/etc/shells',
    line    => "${boxen::config::homebrewdir}/bin/zsh",
    require => Package['zsh'],
  }

  repository { "${dotfiles}":
    source => 'bumi/dotfiles',
  }
  exec { "install dotfiles":
    cwd      => $dotfiles,
    command  => "script/bootstrap"
    provider => shell,
    creates  => "${home}/.zshrc",
    require  => Repository[$dotfiles]
  }
}
