# Public: Install Viscosity.app into /Applications.
#
# Examples
#
#   include viscosity
class viscosity {
  package { 'Viscosity':
    provider => 'appdmg',
    source   => 'http://www.thesparklabs.com/downloads/Viscosity.dmg'
  }
}
