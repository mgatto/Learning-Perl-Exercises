#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: circle.pl
#
#        USAGE: ./circle.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 4/9/2013 5:11:41 PM
#     REVISION: ---
#===============================================================================

use Modern::Perl '2012';
use Circle;

my $circle = Circle->new({
    radius => 12,
});

say $circle->diameter();

say $circle->area();

say $circle->circumference();

