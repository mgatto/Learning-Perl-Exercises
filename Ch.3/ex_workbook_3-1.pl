#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex3-1.pl
#
#        USAGE: ./ex3-1.pl  
#
#  DESCRIPTION: Print out the second to last element of an array entered from
#  the command line.
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 4/10/2013 12:01:27 PM
#     REVISION: ---
#===============================================================================

use Modern::Perl '2012';

print "Enter a series of phrases, each on a new line: ";
chomp(my @strings = <STDIN>);

say $strings[-2];

