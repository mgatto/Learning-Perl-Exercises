#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a program to match a string that contains an 'a', but 
#               doesn't have a 'b' anywhere after the 'a'.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) {
    if (m{a[^b]}) {
        print;
    }
}

exit 0;
