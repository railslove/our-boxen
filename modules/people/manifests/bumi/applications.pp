class people::bumi::applications {
  include chrome
  include arq
  include caffeine
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
  include mumble
  include evernote
  include screenhero
  include mou
  include mou::themes
  mou::preferences { 'Mou':
    theme => 'Solarized (Dark)+',
    css => 'GitHub2'
  }

}
