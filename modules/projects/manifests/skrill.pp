class projects::skrill {
  include projects::skrill-puma-merchant-portal
  include projects::skrill-wpf
  include projects::skrill-integration
}

class projects::skrill-puma-merchant-portal {

  boxen::project { 'skrill-puma-merchant-portal':
    dir           => "${boxen::config::srcdir}/skrill/puma-merchant-portal",
    postgresql    => true,
    elasticsearch => true,
    ruby          => '2.0.0',
    source        => 'railslove/puma-merchant-portal'
  }
}

class projects::skrill-wpf {

  boxen::project { 'skrill-wpf':
    dir           => "${boxen::config::srcdir}/skrill/skrill-wpf",
    postgresql    => true,
    ruby          => '2.0.0',
    source        => 'railslove/skrill-wpf'
  }
}

class projects::skrill-integration {

  boxen::project { 'skrill-integration':
    dir           => "${boxen::config::srcdir}/skrill/skrill-integration",
    ruby          => '2.0.0',
    source        => 'railslove/skrill-integration'
  }
}
