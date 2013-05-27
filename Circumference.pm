#===============================================================================
#
#         FILE: Circumference.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 4/4/2013 5:21:21 PM
#     REVISION: ---
#===============================================================================

package Circle;

use Modern::Perl '2012';
use Moo;
use Math::Trig qw(:pi);
use Params::Validate qw(:all);

has radius => (
    is => 'rw',
);

has diameter => (
    is => 'rw',
);

#has area => 

sub circumference {
    my $self = shift;

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
    
    my $circumference = pi * (2 * $radius);

    return sprintf("%.${precision}f", $circumference);
}


sub area {
    my $self = shift;

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

    $my area = pi * ($radius * $radius);
    
    return sprintf("%d.${precision}f", $area;
} 

