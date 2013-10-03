#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a new program that prints out any input line ending with
#  whitespace (other than just a newline). Put a marker character at the end
#  of the output line so as to make the whitespace visible.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

$_ = "This line has trailing whitespace!   
";

if ( s/\s*\z/\*/ ) {
    say $_; # "I matched $+{CONTAINS_A}"; # |$`<$&>$'|";
}

