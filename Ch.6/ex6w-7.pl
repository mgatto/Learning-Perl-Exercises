#!/usr/bin/env perl 
#===============================================================================
#  DESCRIPTION: 
# In Exercise 6.1, you wrote a program to report the entries in the hash, and
# since then you've added keys that have values that are undefined or the
# empty string. Modify that first program to delete from the hash the keys
# that don't have true values then print the contents of the hash. Don't just
# skip the entries with false values- actually remove those entries from the
# hash.
#
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#      VERSION: 1.0
#      CREATED: 6/9/2013 9:20:53 PM
#===============================================================================

use Modern::Perl '2012';
use Data::Dumper;
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
    else {
        delete $family{$key};
    }

}

say Dumper(\%family);

