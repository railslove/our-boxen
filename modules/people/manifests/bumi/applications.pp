class people::bumi::applications {
  include chrome
  include arq
  include colloquy
  include viscosity
  include transmission
  include spotify
  include onepassword
  include dropbox
  include btsync
  include transmit
  include alfred
  include iterm2::stable
  include skype 
  include screenhero
  include sequel_pro
  include virtualbox
  include github_for_mac
  include macvim

  class boot2docker {
    package {'Boot2Docker':
      source    => 'https://github.com/boot2docker/osx-installer/releases/download/v1.2.0/Boot2Docker-1.2.0.pkg',
      provider  => 'pkg'
  }
  include boot2docker

  class propaneapp {
    package { 'Propaneapp':
      source    => 'http://propaneapp.com/appcast/Propane.zip',
      provider  => 'compressed_app'
    }
  }
  include propaneapp
  
  class multibit {
    package { 'Multibit':
      source   => 'https://multibit.org/releases/multibit-0.5.18/multibit-0.5.18.dmg',
      provider => 'appdmg'
    }
  }
  include multibit
  
  class litecoin {
    package { 'Litecoin':
      source   => 'https://download.litecoin.org/litecoin-0.8.7.1/macosx/Litecoin-Qt-0.8.7.1.dmg',
      provider => 'appdmg'
    }
  }
  include litecoin

  class littlesnitch {
    package { 'Littlesnitch': 
      source   => 'http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-3.3.dmg',
      provider => 'appdmg'
    }
  }
  include littlesnitch

  
  class dropbox {
    package { 'Dropbox':
      provider => 'appdmg',
      source   => 'https://d1ilhw0800yew8.cloudfront.net/client/Dropbox%202.4.7.dmg'
    }
  }
  include dropbox

  class firefox {
    package { 'Firefox':
      provider => 'appdmg',
      source   => 'https://download-installer.cdn.mozilla.net/pub/firefox/releases/29.0/mac/en-US/Firefox%2029.0.dmg'
    }
  }
  include firefox

  class gpgtools {
    package { 'GPGTools':
      name     => 'Install.pkg',
      provider => 'pkgdmg',
      source   => 'https://releases.gpgtools.org/GPG%20Suite%20-%202013.10.22.dmg' 
    }
  }
  include gpgtools

  class viscosity {
    package { 'Viscosity':
      provider => 'appdmg',
      source   => 'http://www.sparklabs.com/downloads/Viscosity.dmg'
    }
  }
}
