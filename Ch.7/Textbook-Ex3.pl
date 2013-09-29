#!/usr/bin/env perl
 #
 #=============================================================================
 #  DESCRIPTION: Make a program that prints each line of its input that
 #  contains period (.), ignoring other lines of input. Try it on the small
 #  text file from the previous exercise: does it notice Mr. Slate?
 #
 #  NOTES: ---
 #  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
 #  CREATED: 9/25/2013 10:01:32 AM
 #=============================================================================
 
 use Modern::Perl '2012';
 use utf8;

while (<>) {
    if (/\./ ) {
        print;
    }
}

