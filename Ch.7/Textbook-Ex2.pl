#!/usr/bin/env perl
 #
 #=============================================================================
 #  DESCRIPTION: Modify the previous program to allow Fred to match as well.
 #  Does it match now if your input string is Fred, frederick or Alfred? (Add
 #  lines with these names to the text file.)
 #
 #  NOTES: ---
 #  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
 #  CREATED: 9/25/2013 10:01:32 AM
 #=============================================================================
 
 use Modern::Perl '2012';
 use utf8;

 while (<>) {
    if (/[fF]red/ ) {
        print;
    }
}

