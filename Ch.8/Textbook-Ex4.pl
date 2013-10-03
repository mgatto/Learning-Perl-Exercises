#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Modify the program from the previous exercise to use named
#  captures instead of relying on $1. Update the code to display the label
#  name.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================
 
use Modern::Perl '2012';
use utf8;

while (<>) { 
    if ( /(?<CONTAINS_A>\b\w*a\b)/ ) {
        say " matched $+{CONTAINS_A}"; # |$`<$&>$'|";
    }
}

