#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex2-2.pl
#
#        USAGE: ./ex2-2.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 4/1/2013 8:00:21 AM
#     REVISION: ---
#===============================================================================

use Modern::Perl '2012';
use Math::Trig qw(:pi);
use Params::Validate qw(:all);

#  Write a program that computes the circumference of a circle with a radius of
#  12.5. Circumference is 2 times the radius (approximately 2 times
#  3.141592654). The answer you get should be about 78.5.

sub circumference {
    # validate both the required radius, and optional precision parameters
    my @params = validate_pos( 
        @_, 
        { 
            type => SCALAR,
            # must be a digit
            regex => qr/^\d+$/,
        }, 
        { 
            type => SCALAR, 
            # default precision is 4
            default => 4,
            # must be a digit
            regex => qr/^\d+$/, 
        } 
    );

    my ($radius, $precision) = @params;

    # We won't calculate negative radii...
    if ( $radius < 0 ) {
        return 0;
    }
    
    return sprintf("%.${precision}f", pi * (2 * $radius));
}


print "Input radius: ";
chomp(my $radius_input = <STDIN>);

print "Input optional precision: ";
chomp(my $precision_input = <STDIN>);

say circumference $radius_input, $precision_input;



