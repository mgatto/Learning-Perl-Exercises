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

#say LearningPerl::Chapter5::Textbook::tac(@ARGV);

#print "Enter some text, each on a new line, then press Ctrl+Z: ";
#chomp(my @text = <STDIN>);
#LearningPerl::Chapter5::Textbook::print20cols(@text);

#print "Enter some text, each on a new line, then press Ctrl+Z: ";
#chomp(my @text2 = <STDIN>);
#print "Enter desired column width as a number, then press Enter: ";
#chomp(my $width = <STDIN>);
#LearningPerl::Chapter5::Textbook::print_my_cols($width, @text2);

# Workbook 5.1 and, Workbook 5.2; Add STDIN as so: perl ex5.pl file.ext - 
# LearningPerl::Chapter5::Workbook::preface_lines(@ARGV);

# Workbook 5.4
#my @formatted_number = LearningPerl::Chapter5::Workbook::all_number_formats(22);
#say "@formatted_number";

# Workbook 5.5
# Write a program that takes two whole numbers from the command line then uses
# printf to report in columns their sum, product, and the percent fraction (to
# two decimal places) of the numbers (including a literal % in the output).
# For instance, given the numbers 5 and 6, produce this output: $ perl ex5-4.
# pl 5 6 first second sum product % 5 6 11 30 83.33%
#
#my $first = $ARGV[0];
#my $second = $ARGV[1];

#printf "%-8s"x 5, qw/first second sum product %/;
#printf "%-8d"x 5, ($first, $second, $first+$second, $first * $second, $first/$second * 100);

# Workbook 5.6
# Write a program that takes a list of whole numbers from the command line and
# prints them in a column. Before you print the column, ensure that all the
# numbers will line up correctly. The number of columns in the output should
# automatically choose their size based on the input: $ perl ex5.6. pl 12466 5
# 67 984 12466 5 67 984 $ perl ex5.6. pl 3478 48 120 7 36455 3478 48 120 7
# 36455
#

print "Enter some numbers, each on a new line, then press Ctrl+Z: ";
chomp(my @numbers = <STDIN>);
printf "%8d\r\n" x $#numbers, @numbers;
