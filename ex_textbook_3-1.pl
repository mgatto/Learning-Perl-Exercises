#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex3-1.pl
#
#        USAGE: ./ex3-1.pl  
#
#  DESCRIPTION: 1. [6] Write a program that reads a list of strings on
#  separate lines until end-of-input and prints out the list in reverse order. 
#  If the input comes from the keyboard, you'll probably need to signal the end
#  of the input by pressing Control-D on Unix, or Control-Z on Windows.
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

print "Enter some phrases, each on a new line: ";
chomp(my @strings = <STDIN>);

say reverse @strings;

