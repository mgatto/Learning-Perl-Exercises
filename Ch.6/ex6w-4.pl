#!/usr/bin/env perl 
#===============================================================================
#  DESCRIPTION: 
# What happens in your program for Exercise 6.3 if the user-entered name is in
# the hash, but does not have a birthday? Add a couple of entries to the hash: 
# one with a value of undef, and one with a value of the empty string. Modify 
# your program for Exercise 6.3 to tell the user that you don't know the 
# birthday if the key is in the hash, but does not have a value. 
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


# Case insensitive lookup...
print "Enter someone's first name: ";
chomp(my $first_name = <STDIN>);

if ( exists $family{$first_name} ) {

    if ( not defined $family{$first_name} or $family{$first_name} eq '' ) {
        say "I found $first_name, but they have no family name.";
    }
    else {
        print "${first_name}'s family name is $family{$first_name}";
    }

}
else {
    print "Could not find ${first_name}'s family name";
}

