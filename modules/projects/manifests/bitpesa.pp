class projects::bitpesa {

  boxen::project { 'bitpesa':
    postgresql    => true,
    ruby          => '2.0.0',
    source        => 'railslove/bitpesa'
  }

}