#!/usr/bin/env perl 
#===============================================================================
#  DESCRIPTION:  Write a program that reads a series of words (with one word
#  per line) until end-of-input, then prints a summary of how many times each 
#  word was seen.
# 
# (Hint: remember that when an undefined value is used as if it were a number,
# Perl auto- matically converts it to 0. It may help to look back at the earlier
# exercise that kept a running total.) So, if the input words were fred, 
# barney, fred, dino, wilma, fred (all on separate lines), the output should 
# tell us that fred was seen 3 times. For extra credit, sort the summary words 
# in code point order in the output.
#
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#      VERSION: 1.0
#      CREATED: 6/10/2013 12:38:49 PM
#===============================================================================

use Modern::Perl '2012';
use utf8;

print "Enter a list of words, terminating with Ctrl+Z: ";
chomp(my @words = <STDIN>);

my %word_count;
foreach my $word (@words) {
    if (exists $word_count{$word} ) {
         $word_count{$word}++; 

    } else {
        $word_count{$word} = 1;
    }
}


foreach my $key ( sort keys %word_count ) {
    say "$key was repeated $word_count{$key} times";
}

