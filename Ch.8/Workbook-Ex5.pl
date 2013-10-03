#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a program (not just a regular expression) that can tell
#  the difference between scalar, array, and hash variables, and have it
#  report what it finds. Try it with these names: $ fred, @barney, %betty.
#  Also try writing your pattern with the /x match modifier so you can
#  comment each part of your pattern. How would you limit the variable names
#  to just ASCII? How would you match variable names using non-ASCII
#  characters? You don't have to handle any of the special variables such as
#  $ 1 or ${ ^ PREMATCH}.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

$_ = '$name @names %all_people_names';
if (m/    
    \$  # scalars begin with a $, here escaped
    [\p{Alphabetic}\p{Decimal_Number}\p{Mark}\p{Connector_Punctuation}]+  
        # must be one or more of these unicode character types
/xg) {
    say "$_ is a scalar";
    say "I matched |$`<$&>$'|";
} elsif(m/    
    \@  # arrays begin with a @, here escaped
    [\p{Alphabetic}\p{Decimal_Number}\p{Mark}\p{Connector_Punctuation}]+  
        # must be one or more of these unicode character types
/xg
) {
    say "$_ is an array";
    say "I matched |$`<$&>$'|";
} elsif(m/    
    %  # hashes begin with a %, here escaped
    [\p{Alphabetic}\p{Decimal_Number}\p{Mark}\p{Connector_Punctuation}]+  
        # must be one or more of these unicode character types
/xg
) {
    say "$_ is a hash";
    say "I matched |$`<$&>$'|";
}

