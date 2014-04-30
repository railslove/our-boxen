class projects::blitzbude {

  boxen::project { 'blitzbude':
    postgresql    => true,
    ruby          => '2.1.1',
    source        => 'railslove/blitzbude'
  }

}

