use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
  module_name => 'CGI::Application::Plugin::Authentication::Driver::CDBI',
  license     => 'perl',
  create_makefile_pl => 'traditional',
  create_readme      => 1,
  dist_author        => 'Shawn Sorichetti <ssoriche@coloredblocks.net>',
  dist_version_from  =>
    'lib/CGI/Application/Plugin/Authentication/Driver/CDBI.pm',
  requires => {
    'Test::More'                               => 0,
    'CGI::Application::Plugin::Authentication' => 0.06,
    'Class::DBI'                               => 0,
    'DBD::SQLite'                              => 0,
  },
  add_to_cleanup => ['CGI-Application-Plugin-Authentication-Driver-CDBI-*'],
);

$builder->create_build_script();
