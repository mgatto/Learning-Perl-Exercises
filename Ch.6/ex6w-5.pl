#!/usr/bin/env perl 
#===============================================================================
#  DESCRIPTION: 
# Write a program to create a birthday report. Use the hash you created for
# Exercise 6.4 and output each entry that has a birthday. Go through each entry
# of the hash with a foreach loop.
#
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#      VERSION: 1.0
#      CREATED: 6/9/2013 9:20:53 PM
#===============================================================================

use Modern::Perl '2012';
use utf8;

my %family = (
    mike        => 'Gatto',
    jamie       => 'Gatto',
    cindy       => 'Gatto',
    bisma       => 'Aizaz',
    xain        => 'Imran',
    khalil      => 'Gatto',
    anwar       => 'Gatto',
    "joey lynn" => 'Gatto',
    morgan      => 'Gatto',
    moog        => undef,
    torh        => ''
);

foreach my $key ( keys %family ) {

    if ( defined $family{$key} and $family{$key} ne '' ) {
        say "${key}'s last name is $family{$key}.";
    }

}



