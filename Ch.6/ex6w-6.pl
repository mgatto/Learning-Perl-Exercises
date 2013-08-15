#!/usr/bin/env perl 
#===============================================================================
#  DESCRIPTION: 
# Modify your program from Exercise 6.5 to go through the hash with the each
# function instead of a foreach loop.
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


while ( my ($key, $value) = each %family ) {

    if ( defined $value and $value ne '' ) {
        say "${key}'s last name is $value."; 
    }

}

