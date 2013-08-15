#! /usr/bin/env perl

use Modern::Perl '2012';
use Data::Dumper;

# Make a program that will repeatedly ask the user to guess a secret
# number from 1 to 100 until the user guesses the secret number. Your program
# should pick the number at random by using the magical formula int(1 + rand
# 100). When the user guesses wrong, the program should respond, "Too high"
# or "Too low." If the user enters the word quit or exit , or if the user
# enters a blank line, the program should quit. Of course, if the user guesses
# correctly, the program should quit then as well!

my $guess;
# set the number
my $number = int(1+ rand 100);

print Dumper($number);

# prompt for a guess
print "Guess a number: ";

while (1) {
    chomp(my $guess = <STDIN>);
    
print Dumper($guess);

# exit(0) if $guess eq "exit" or "quit";

    if ( $guess == $number ) {
        print "You win!";
        exit 0;
    } 
    elsif ( $guess > $number ) {
        print "Too high! Try again: ";
    }
    elsif ( $guess < $number ) {
        print "Too low! Try again: ";
    }
    else {
        print "I have no clue what just happened...";
    }
    
}

