#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex2-6.pl
#
#        USAGE: ./ex2-6.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 4/8/2013 11:04:25 AM
#     REVISION: ---
#===============================================================================
 
use Modern::Perl '2012';

print "Enter first number: ";
chomp (my $first_number = <STDIN>);

print "Enter second number: ";
chomp (my $second_number = <STDIN>);

if ( $first_number > $second_number ) {
    say "First number: $first_number is larger than the second one: $second_number";
} else {
    say "Second number: $second_number is larger than the first oneL: $first_number";
}

