class people::bumi::osx {
  
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_autocorrect
  class { 'osx::global::key_repeat_delay':
    delay => 25
  }
  class { 'osx::global::key_repeat_rate':
    rate => 2
  }
  include osx::finder::unhide_library
  include osx::universal_access::ctrl_mod_zoom
  include osx::no_network_dsstores
  include osx::dock::clear_dock
  class { 'osx::dock::icon_size': 
    size => 20
  }

  boxen::osx_defaults { 'show all file extensions':
    ensure => present,
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleShowAllExtensions',
    value  => true
  }

  boxen::osx_defaults { 'Disable the warning when changing a file extension':
    ensure => present,
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'FXEnableExtensionChangeWarning',
    value  => false
  }


  boxen::osx_defaults { 'tap to click for external trackpads':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'Clicking',
    value  => true
  }
  boxen::osx_defaults { 'tap to click for trackpads':
    ensure => present,
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    value  => 1,
    type   => "int"
  }
}

