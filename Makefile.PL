use 5.000001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Math::Geometry::Planar::Offset',
    VERSION_FROM      => 'Offset.pm', # finds $VERSION
    PREREQ_PM         => {
		Math::Geometry::Planar => '1.14',
		CAD::Calc => '0.22',
		},
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'Offset.pm', # retrieve abstract from module
       AUTHOR         => 'Eric L. Wilhelm <ewilhelm at sbcglobal dot net>') : ()),
);
