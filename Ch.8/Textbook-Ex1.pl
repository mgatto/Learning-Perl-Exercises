#!/usr/bin/env perl
 #
 #=============================================================================
 #  DESCRIPTION: Using the pattern test program, make a pattern to match the
 #  string 'match'. Try the program with the input string 'beforematchafter'.
 #  Does the output show the three parts of the match in the correct order? 
 #
 #  NOTES: ---
 #  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
 #  CREATED: 9/25/2013 10:01:32 AM
 #=============================================================================
 
 use Modern::Perl '2012';
 use utf8;

$_ = "beforematchafter";

chomp;

if ( /match/ ) {
    say "I matched |$`<$&>$'|";
} else {
    say "No match in |$_|";
}

