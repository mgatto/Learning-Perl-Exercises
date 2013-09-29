#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Make a program that prints each line of its input that
#  mentions fred. Does it match if your input string is Fred, frederick, or
#  Alfred? Make a small text file with a few lines mentioning "fred flinstone"
#  and his friends, then use that file as input to this program and the ones
#  later in this section.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) {
    if (/fred/ ) {
        print;
    }
}

