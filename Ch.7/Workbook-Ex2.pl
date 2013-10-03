#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a program to match a line that has an a, a b, and 
#               a c, in that order. Any number of characters can be between 
#               those letters.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) {
    if (m{a.*b.*c}) {
        print;
    }
}

exit 0;
