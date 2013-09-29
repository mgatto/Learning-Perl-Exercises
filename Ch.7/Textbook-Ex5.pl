#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Make a program that prints each line that has two of the same
#  non-whitepace characters next to each other. It should match lines that
#  contain words such as Mississippi, Bamm-Bamm, or llama.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================
 
use Modern::Perl '2012';
use utf8;

while (<>) {
    if (/(\S)g{1}/ ) {
        print;
    }
}

