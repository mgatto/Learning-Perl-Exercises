#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex2-3.pl
#
#        USAGE: ./ex2-3.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 4/2/2013 12:01:51 PM
#     REVISION: ---
#===============================================================================

use Modern::Perl '2012';
use Scalar::Util;

print "Enter a whole number: ";
chomp(my $number = <STDIN>);

if (! looks_like_number($number)) {
    die "Not a numeric or convertable value; you probably entered a pure
    string.";
}

my $odd_or_even = '';

if ( 0 == $number % 2 ) {
    $odd_or_even = "even";
} else {
    $odd_or_even = "odd";
}

printf("Number: %d is %s", $number, $odd_or_even);

