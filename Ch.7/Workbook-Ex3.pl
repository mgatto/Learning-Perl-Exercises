#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a program to match a string that has an “a”, a “b”, and 
#               a “c”, in that order, but must have at least one other 
#               character between each of those letters.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) {
    if (m{a.+b.+c}) {
        print;
    }
}

exit 0;
