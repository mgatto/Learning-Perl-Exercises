#!/usr/bin/env perl 
#===============================================================================
#  DESCRIPTION: Write a program that will ask the user for a given name
#  and report the corresponding family name. Use the names of people you know.
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
);


# Case insensitive lookup...
print "Enter someone's first name: ";
chomp(my $first_name = <STDIN>);


if ( exists $family{$first_name} ) {
    print "${first_name}'s family name is $family{$first_name}";
}
else {
    print "Could not find ${first_name}'s family name";
}

