class people::bumi {
  notify { 'class people::bumi declared': }

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"
  
  include people::bumi::applications
  include people::bumi::osx

  include projects::blitzbude
  include projects::skrill
  include projects::chefrepo

  include zsh
  include autojump

  
  # default db? - needs verification
  postgresql::db { 'bumi': }

  repository { "${dotfiles}":
    source => 'bumi/dotfiles',
  }
  exec { "install dotfiles":
    cwd      => $dotfiles,
    command  => "rake",
    provider => shell,
    creates  => "${home}/.zshrc",
    require  => Repository[$dotfiles]
  }

}
