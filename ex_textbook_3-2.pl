#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex_textbook_3-2.pl
#
#        USAGE: ./ex_textbook_3-2.pl  
#
#  DESCRIPTION: 2. [12] Write a program that reads a list of numbers (on 
#  separate lines) until end-of-input and then prints for each number the 
#  corresponding person's name from the list shown below. (Hardcode this list 
#  of names into your program. That is, it should appear in your program's 
#  source code.) For example, if the input numbers were 1, 2, 4, and 2, the 
#  output names would be fred, betty, dino, and betty:
#
#  fred betty barney dino wilma pebbles bamm-bamm
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 4/14/2013 3:33:30 PM
#     REVISION: ---
#===============================================================================

use Modern::Perl '2012';

my @flinstones = qw(fred betty barney dino wilma pebbles bamm-bamm);

say "Enter a list of numbers from 1 to 7, each on a separate line, then press
Ctrl+Z: ";
chomp(my @numbers = <STDIN>);

# TODO ensure checking for 1 to 7


for my $i (@numbers) {
    say $flinstones[$i];
}

# the textbook's solution
#foreach (@numbers) {
#    print "$names[ $_ - 1 ]\n";
#}

