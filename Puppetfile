# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.3.5"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.


github "ruby", "6.7.4"
github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.1"
github "gcc",        "2.0.100"
github "git",        "1.3.7"
github "homebrew",   "1.6.0"
github "hub",        "1.1.0"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.5.0"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.1"
github "elasticsearch", "2.1.0"
github "qt", "1.1.0"
github "phantomjs", "2.1.0"
github "postgresql", "2.2.2"
github "mysql", "1.2.0"
github "redis", "2.1.0"
github "osx", "2.2.0"
github "sysctl", "1.0.0"
github "java", "1.2.0"

github "macvim", "1.0.0"
github "imagemagick", "1.2.1"
github "autojump", "1.0.0"
github "spotify", "1.0.1"
github "onepassword", "1.1.0"
github "transmit", "1.0.1"
github "dropbox", "1.2.0"
github "btsync", "1.0.0"
github "heroku", "2.0.0"
github "screenhero", "1.0.1"
github "chrome", "1.1.1"
github "viscosity", "1.0.0"
github "transmission", "1.0.0"
github "arq", "1.0.0"
github "caffeine", "1.0.0"
github "colloquy", "1.0.0"
github "cmake", "1.0.1"
github "mongodb", "1.2.0"
github "zsh", "1.0.0"
github "alfred", "1.1.7"
github "iterm2", "1.0.6"
github "evernote", "2.0.4"
github "skype", "1.0.7"
github "sequel_pro", "1.0.1"
github "virtualbox", "1.0.9" 
github "github_for_mac", "1.0.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
