#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex5.pl
#
#        USAGE: ./ex5.pl  
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
#      CREATED: 5/16/2013 11:58:30 AM
#     REVISION: ---
#===============================================================================

use Modern::Perl '2012';
use lib '.';
use autodie;
use utf8;


use LearningPerl::Chapter5::Textbook;
use LearningPerl::Chapter5::Workbook;

say LearningPerl::Chapter5::Textbook::tac(@ARGV);

print "Enter some text, each on a new line, then press Ctrl+Z: ";
chomp(my @text = <STDIN>);
LearningPerl::Chapter5::Textbook::print20cols(@text);

