#
#===============================================================================
#
#         FILE: ex4-textbook.pm
#
#
#
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 4/25/2013 1:32:06 PM
#     REVISION: ---
#===============================================================================

package LearningPerl::Chapter4::Textbook;

use Modern::Perl '2012';

 
#  1. Write a subroutine, named total, which returns the total of a list
#  of numbers.
#  Hint: the subroutine should not perform any I/O; it should simply process
#  its parameters and return a value to its caller. Try it out in this 
#  sample program, which merely exercises the subroutine to see that it 
#  works. The first group of numbers should add up to 25.
#    
#    my @fred = qw{ 1 3 5 7 9 };
#    my $fred_total = total(@fred);
#    print "The total of \@fred is $fred_total.\n";
#    print "Enter some numbers on separate lines: ";
#    my $user_total = total(<STDIN>);
#    print "The total of those numbers is $user_total.\n";
sub total {
    my $total;

    foreach (@_) {
        $total += $_;
    }

    return $total;
}


#  3. [18] Extra credit exercise: write a subroutine, called &above_average,
#  which takes a list of numbers and returns the ones which are above the 
#  average (mean).
#
#  (Hint:  make another subroutine that calculates the average by dividing the 
#  total by the number of items.) Try your subroutine in this test program.
#
#  my @fred = above_average(1..10);
#  print "\@fred is @fred\n";
#  print "(Should be 6 7 8 9 10)\n";
#  my @barney = above_average(100, 1..10);
#  print "\@barney is @barney\n";
#  print "(Should be just 100)\n";

sub above_average {
    my $average;
    my @exceeding;
    # temp holding variable
    my $total;

    foreach (@_) {
        $total += $_;
    }

    # count must add 1 since there is a zeroeth element, but averages are 
    # calculated by the real number of elements starting from 1...
    $average = $total / ($#_ + 1);

    foreach (@_) {
        push @exceeding, $_, if $_ > $average;
    }

    return @exceeding;
}


# 4. [10] Write a subroutine named greet that welcomes the person you name by
# telling them the name of the last person it greeted:
#   greet( "Fred" );
#   greet( "Barney" );
#
# This sequence of statements should print:
#   Hi Fred! You are the first one here!
#   Hi Barney! Fred is also here!
sub greet {
    state $lastly_greeted;

    my $greeted_name = shift;

    # deal with "unitialized error"
    if ( defined $lastly_greeted) {
        say "Hi $greeted_name! $lastly_greeted is also here!";
    } else {
        say "Hi $greeted_name! You are the first one here!";
    }

    $lastly_greeted = $greeted_name;
}

# 5. [10] Modify the previous program to tell each new person the names of all
# the people it has previously greeted:
#   greet( "Fred" );
#   greet( "Barney" );
#   greet( "Wilma" );
#   greet( "Betty" );
# 
# This sequence of statements should print:
#   Hi Fred! You are the first one here!
#   Hi Barney! I've seen: Fred
#   Hi Wilma! I've seen: Fred Barney
#   Hi Betty! I've seen: Fred Barney Wilma
sub greet_all {
    state @greeted_people;

    my $greeted_name = shift;

    # deal with "unitialized error"
    if ( @greeted_people ) {
        say "Hi $greeted_name! I've also seen ", join(' and ', @greeted_people), " here!";
    } else {
        say "Hi $greeted_name! You are the first one here!";
    }

    push @greeted_people, $greeted_name;

    # This, because it returns the '1' from the push above, otherwise!
    return "";
}





1;
