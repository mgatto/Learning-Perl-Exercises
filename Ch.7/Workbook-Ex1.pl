#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a program that matches a string containing either “fred”
#               or “barney” then reports the part of the string before the 
#               match, the part of the string after the match, and the name 
#               that it matched.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) {
    if (m{fred|barney}) {
        say "before = " . $` . "; name = " . $& . "; after = " . $';
    }

    # ${^PREMATCH} # ${^MATCH} # ${^POSTMATCH}
}

exit 0;
