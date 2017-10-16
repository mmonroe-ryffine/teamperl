#!/usr/bin/perl

use strict;
use warnings FATAL => qw(all);
my $name = $ARGV[-1];
#say STDERR "Hello $name";
use Data::Dump qw(dump);
say STDERR dump([@ARGV]);
