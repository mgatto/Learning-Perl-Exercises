#!/usr/bin/env perl
 #
 #=============================================================================
 #  DESCRIPTION: Make a program that prints each line that has a word that is
 #  capitalized but not ALL capitalized. Does it match Fred but niether fred
 #  nor FRED?
 #
 #  NOTES: ---
 #  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
 #  CREATED: 9/25/2013 10:01:32 AM
 #=============================================================================
 
 use Modern::Perl '2012';
 use utf8;
 
while (<>) {
    if (/[A-Z]{1}[a-z]+/ ) {
        print;
    }
}

