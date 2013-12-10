class people::bumi::osx {
 
  osx::recovery_message { 'You are beeing watched. Report your possession to hello@michaelbumann.com': }
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_autocorrect
  include osx::global::disable_remote_control_ir_receiver
  class { 'osx::global::key_repeat_delay':
    delay => 1
  }
  class { 'osx::global::key_repeat_rate':
    rate => 1
  }
  include osx::finder::unhide_library
  include osx::finder::empty_trash_securely

  include osx::universal_access::ctrl_mod_zoom
  include osx::no_network_dsstores
  include osx::software_update

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

  boxen::osx_defaults { 'enable firewall': 
    user    => root,
    domain  => '/Library/Preferences/com.apple.alf',
    key     => 'globalstate',
    value   => 1,
    type    => 'int'
  }

  boxen::osx_defaults { 'disable secondary click for trackpads':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadCornerSecondaryClick',
    value  => 0,
    type   => "int"
  }

  boxen::osx_defaults { 'disable secondary click nosglobaldomain':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.enableSecondaryClick',
    value  => false
  }

  boxen::osx_defaults { 'enable quicklook text selection':
    user    => $::boxen_user,
    domain  => 'com.apple.finder',
    key     => 'QLEnableTextSelection',
    value   => true,
    type    => 'bool'
  }

}

