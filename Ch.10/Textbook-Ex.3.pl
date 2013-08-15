#! /usr/bin/env perl

# Modify the program from Exercise 3 in Chapter 6 (the environment lister) to 
# print (undefined value) for environment variables without a value. You can 
# set the new environment variables in the program. Ensure that your program 
# reports the right thing for variables with a false value. If you are using 
# Perl 5.10 or later, use the // operator. Otherwise, use the conditional 
# operator.

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