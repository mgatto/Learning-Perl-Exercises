#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Use relative backreferences to construct a pattern to match a 
#               sequence of at least three characters that reports itself, but
#               interwoven with another sequence that repeats itself. You 
#               should be able to match strings such as abc123abcd123 since 
#               abc and 123 each repeat themselves.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) {
    if (m{(.{3,}).*(.{3,}).*\g{-2}.*\g{-1}}) {
        print;
    }
}

exit 0;
