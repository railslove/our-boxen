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

  class propaneapp {
    package { 'Propaneapp':
      source    => 'http://propaneapp.com/appcast/Propane.zip',
      provider  => 'compressed_app'
    }
  }
  include propaneapp
  
  class multibit {
    package { 'Multibit':
      source   => 'https://multibit.org/releases/multibit-0.5.14/multibit-0.5.15.dmg',
      provider => 'appdmg'
    }
  }
  include multibit
  
  class litecoin {
    package { 'Litecoin':
      source   => 'https://litecoin.org/downloads/macosx/Litecoin-Qt-0.8.5.1.dmg',
      provider => 'appdmg'
    }
  }
  include litecoin
}
