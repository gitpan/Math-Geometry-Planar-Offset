use strict;
use warnings;
use Module::Build;

if($ENV{USER} and ($ENV{USER} eq 'ewilhelm')) {
	# bear with me here
	warn "you are me?  creating Changes/README\n";
	system('mk_changes lib/Math/Geometry/Planar/Offset.pm > Changes');
	system('mk_readme lib/Math/Geometry/Planar/Offset.pm > README');
}

my $builder = Module::Build->new(
    module_name         => 'Math::Geometry::Planar::Offset',
    license             => 'perl',
    #dist_author         => 'Eric Wilhelm <ewilhelm at cpan dot org>',
    dist_version_from   => 'lib/Math/Geometry/Planar/Offset.pm',
    # dist_author_from   => 'lib/Math/Geometry/Planar/Offset.pm',
    requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ qw(Math-Geometry-Planar-Offset-* Changes README)],
);

$builder->create_build_script();
