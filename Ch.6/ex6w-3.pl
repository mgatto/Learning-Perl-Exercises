#!/usr/bin/env perl 
#===============================================================================
#  DESCRIPTION: What happens in your program from Exercise 6.2 if the user asks
#  for the birthday for someone who is not in the hash? Modify the program you
#  created for Exercise 6.2 to warn the user if the key is not in the hash.
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

