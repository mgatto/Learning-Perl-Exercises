#!/usr/bin/env perl 
#===============================================================================
#  DESCRIPTION:  Write a program to list all of the keys and values in %ENV.
#  Print the results in two columns in ASCIIbetical order. For extra credit, 
#  arrange the output to vertically align both columns. The length function can
#  help you figure out how wide to make the first column. Once you get the 
#  program running, try setting some new environment variables and ensuring that
#  they show up in your output.
#
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#      VERSION: 1.0
#      CREATED: 6/10/2013 12:38:49 PM
#===============================================================================

use Modern::Perl '2012';
use utf8;

foreach my $key ( sort keys %ENV ) {
    if ( length $key > $size ) {
        $size = length $key;
    }
}

say $size;

foreach my $key ( sort keys %ENV ) {
    printf "%${size}s => %s\r\n", ( $key, $ENV{$key} );
}

