#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Use a relative backreference to construct a pattern to match a
#               sequence of at least three characters that repeats itself at 
#               some point in the string. You should be able to match strings 
#               such as abcdabc since abc repeats itself.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) {
    if (m{(...+).*\g{-1}}) {
        print;
    }
}

exit 0;
