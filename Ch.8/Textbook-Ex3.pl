#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Modify the program from the previous exercise so that the word
#  ending with the letter 'a' is captured into $1. Update the code to display
#  that variable's contents in single quotes.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) {
 
    if ( /(\b\w*a\b)/ ) {
        say "I matched |$`<$&>$'|";
        say "\$1 contains '$1'";
    }
}
