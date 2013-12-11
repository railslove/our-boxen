class projects::chefrepo {

  boxen::project { 'chefrepo':
    ruby          => '2.0.0',
    dir           => "${boxen::config::srcdir}/railslove/chef-repo",
    source        => 'git@codebasehq.com:railslove/railslove/chef-repo.git'
  }

}
