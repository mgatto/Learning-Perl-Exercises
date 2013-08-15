#!/usr/bin/env perl
#
#===============================================================================
#  DESCRIPTION: Write a program that counts the number of lines of input until
#               it finds the word 'perl' then stops and reports the last line 
#               number.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 7/22/2013 16:06:22 PM
#===============================================================================

use Modern::Perl '2012';
use utf8;

while (<>) {
    next unless m/perl/;
    die $.;
}
