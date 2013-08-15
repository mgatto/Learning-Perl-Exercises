#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Using a for loop, write a program to report a table of squares 
#               and cubes for the multiples of 3 between 3 and 99.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 7/29/2013 09:24:43 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

for (my $number = 3; $number <= 99; $number += 3) {
    my $square = $number ** 2;
    my $cube = $number ** 3;

    printf("%2d %6d %10d\r\n", $number, $square, $cube);
}
