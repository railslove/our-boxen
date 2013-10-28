# Install Mumble into /Applications
#
# Usage:
#
#     include mumble
class mumble {
  package { 'Mumble':
    provider => 'appdmg',
    source   => 'http://superb-dca2.dl.sourceforge.net/project/mumble/Mumble/1.2.4/Mumble-1.2.4.dmg';
  }
}
