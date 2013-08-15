#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex2-7.pl
#
#        USAGE: ./ex2-7.pl  
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
#      CREATED: 4/10/2013 12:01:27 PM
#     REVISION: ---
#===============================================================================

use Modern::Perl '2012';
use Regexp::Common;

my $sum;

print "Enter a number: ";

# Terminate input with Ctrl+Z = Windows, or Ctrl+D = *nix/OSX
while ( my $number = <STDIN>  ) {
    if ($number =~ /$RE{num}{real}/) {
        $sum += $number;
        print "Enter a number: ";
    } else {
        print "Not a number; try again: ";
    }
}

print $sum;
