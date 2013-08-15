#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Using 'redo' and a naked block, continually prompt a use to 
#               guess a secret number between 1 and 10.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 7/31/2013 09:02:44 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

my $guess;
# set the number
my $number = int(1+ rand 100);

# prompt for a guess
print "Guess a number: ";

while (my $guess = <STDIN>) {
    #chomp(my $guess = <STDIN>);

    if ( $guess == $number ) {
        print "You win!";
        exit 0;
    } 
    elsif ( $guess > $number ) {
        print "Too high! Try again: ";
        redo;
    }
    elsif ( $guess < $number ) {
        print "Too low! Try again: ";
        redo;
    }
    else {
        print "I have no clue what just happened...";
        redo;
    }
    
}