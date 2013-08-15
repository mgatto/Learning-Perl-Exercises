#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a program to count the lines in a Perl program. Skip blank 
#               lines and line which only have a comment.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 7/30/2013 09:15:11 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

my $perl_program = $ARGV[0];
my $line_count = 0;

open(my $perl_fh, "<", $perl_program);

while (<$perl_fh>) {
    print unless m/^#|^\s$/;
    $line_count++ unless m/^#|^\s$/;
}

printf("%s has %d lines.\r\n", $perl_program, $line_count); 