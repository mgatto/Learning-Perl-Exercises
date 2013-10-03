#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Use the Unicode properties to match lines that have numbers or
#               whitespace. If the line has a character with the number 
#               property, output a message saying so. If the line has a 
#               character with whitespace, output a message saying so. If it 
#               has both, output two messages.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) {
    if (m{\p{Number}}) {
        say "Line has a number in it...";
    }
    
    if (m{\p{Space}}) {
        say "Line has whitespace in it...";
    }


}

exit 0;
