#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex2-mgatto-1.pl
#
#        USAGE: ./ex2-mgatto-1.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 3/31/2013 10:03:55 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my $number = 254;

print "0" , sprintf("%o", $number) , "\n", "0x" , sprintf("%x", $number) , "\n";

