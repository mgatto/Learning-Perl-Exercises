#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex1-2.pl
#
#        USAGE: ./ex1-2.pl  
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
#      CREATED: 3/31/2013 8:11:09 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my @lines = `perldoc -u -f atan2`;
foreach (@lines) {
    s/\w<([^>]+)>/\U$1/g;
    print;
}
