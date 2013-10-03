#!/usr/bin/env perl
 #
 #=============================================================================
 #  DESCRIPTION: Using the pattern test program, make a pattern that matches
 #  if any word ends with the letter 'a'. Does it match 'wilma' but not
 #  'barney'? 
 #
 #  NOTES: ---
 #  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
 #  CREATED: 9/25/2013 10:01:32 AM
 #=============================================================================
 
 use Modern::Perl '2012';
 use utf8;

while (<>) {

    if ( /a\b/ ) {
        say "I matched |$`<$&>$'|";
    } else {
        say "No match in |$_|";
    }
}
