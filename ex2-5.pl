#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex2-5.pl
#
#        USAGE: ./ex2-5.pl  
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
#      CREATED: 4/8/2013 10:54:44 AM
#     REVISION: ---
#===============================================================================

use Modern::Perl '2012';

say 2 ** 3 ** 4;
# doing this actually causes Perl to interpret say (...) as a function!
# say (2 ** 3) ** 4;
say "" . (2 ** 3) ** 4;
say 2 ** (3 ** 4);


say 2 /3 * 4;

say 2 + 3 *4 ** 5 - 6;

