#!/usr/bin/perl

use strict;
use Test::More tests => 1;

eval "use Pod::Coverage";

plan skip_all => "Pod::Coverage required" if $@;

my $pc = Pod::Coverage->new( package => 'CPAN::Mini::Tested' );

ok( $pc->coverage == 1 );

unless ($pc==1) {
  print "\n\n\n\x23 ", join(" ", $pc->uncovered), "\n\n\n\n";
}
