
# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

use Test;
use strict;

BEGIN {plan tests => 1};

eval {require Math::Geometry::Planar};
ok ($@,'');
croak() if $@;
use Math::Geometry::Planar;

