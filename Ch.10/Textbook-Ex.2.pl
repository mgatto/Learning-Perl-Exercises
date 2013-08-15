#! /usr/bin/env perl

# Modify the program from the previous exercise to print extra debugging 
# in- formation as it goes along, such as the secret number it chose. Make 
# your change such that you can turn it off, but your program emits no 
# warnings if you turn it off. If you are using Perl 5.10 or later, use the 
# // operator. Otherwise, use the conditional operator.

use Modern::Perk '2012';
use Data::Dumper;

my $no_dump = $ARGV[0] // 0;

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

