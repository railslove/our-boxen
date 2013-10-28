class people::bumi::osx {
  
  osx::recovery_message { 'If this Mac is found, please call +49 176 22747893': }
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_autocorrect
  include osx::global::key_repeat_delay
  class { 'osx::global::key_repeat_delay':
    delay => 25
  }
  include osx::global::key_repeat_rate
  class { 'osx::global::key_repeat_rate':
    rate => 2
  }
  include osx::finder::unhide_library
  include osx::universal_access::ctrl_mod_zoom
  include osx::no_network_dsstores
  include osx::dock::clear_dock
  include osx::dock::icon_size
  class { 'osx::dock::icon_size': 
    size => 20
  }

  boxen::osx_defaults { 'show all file extensions':
    ensure => present,
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleShowAllExtensions',
    value  => true, 
    notify => Exec['killall Finder'];
  }

  boxen::osx_defaults { 'Disable the warning when changing a file extension':
    ensure => present,
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'FXEnableExtensionChangeWarning',
    value  => false,
    notify => Exec['killall Finder'];
  }


  boxen::osx_defaults { 'tap to click for external trackpads':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'Clicking',
    value  => true,
    notify => Exec['killall Finder'];
  }
  boxen::osx_defaults { 'tap to click for trackpads':
    ensure => present,
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    value  => 1,
    type   => "int",
    notify => Exec['killall Finder'];
  }
}

