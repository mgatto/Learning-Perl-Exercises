#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex4.pl
#
#        USAGE: ./ex4.pl  
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
#      CREATED: 5/2/2013 7:56:33 AM
#     REVISION: ---
#===============================================================================

use Modern::Perl '2012';
use lib '.';
use LearningPerl::Chapter4::Textbook;
use LearningPerl::Chapter4::Workbook;

my @range = (1,3,5,7,9);
say LearningPerl::Chapter4::Textbook::total(@range);

#  2. [5] Using the subroutine from the previous problem, make a program to
#  calculate the sum of the numbers from 1 to 1,000.
say LearningPerl::Chapter4::Textbook::total(1..1000);


say LearningPerl::Chapter4::Textbook::above_average(100, 1..10);

say LearningPerl::Chapter4::Textbook::greet("Fred");
say LearningPerl::Chapter4::Textbook::greet("Barney");
say LearningPerl::Chapter4::Textbook::greet("Wilma");

say LearningPerl::Chapter4::Textbook::greet_all("Fred");
say LearningPerl::Chapter4::Textbook::greet_all("Barney");
say LearningPerl::Chapter4::Textbook::greet_all("Wilma");

say LearningPerl::Chapter4::Workbook::show_args("fred", "barney", "betty");
say LearningPerl::Chapter4::Workbook::show_args_again("fred", "barney", "betty");

say LearningPerl::Chapter4::Workbook::apply_op("+",1,2,3);
say LearningPerl::Chapter4::Workbook::apply_op("*",1,2,3);
say LearningPerl::Chapter4::Workbook::apply_op("/",10,2);
say LearningPerl::Chapter4::Workbook::apply_op("-",10,2,3);

