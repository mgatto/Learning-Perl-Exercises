#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Modify the program from the previous exercise so that
#  immediately following the word ending in a 'a' it will also capture up to
#  five characters in a separate capture variable.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) { 
    if ( /(?<CONTAINS_A>\b\w*a\b)(?<FIVE_CHARS>.{0,5})/ ) {
        say "I matched $+{CONTAINS_A}"; # |$`<$&>$'|";
        say "I also matched up to 5 chars: $+{FIVE_CHARS}";
    }
}

