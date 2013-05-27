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


sub circumference {
    my $self = shift;
    my $radius = $self->radius;

    # validate any optional precision parameter
    my @params = validate_pos( 
        @_, 
        { 
            type => SCALAR, 
            # default precision is 4
            default => 4,
            # must be a digit
            regex => qr/^\d+$/, 
        } 
    );

    my ($precision) = @params;

    # We won't calculate negative radii...
    if ( $radius < 0 ) {
        return 0;
    }
    
    my $circumference = pi * (2 * $radius);

    return sprintf("%.${precision}f", $circumference);
}


sub area {
    my $self = shift;
    my $radius = $self->radius;

    # validate any optional precision parameter
    my @params = validate_pos( 
        @_, 
        { 
            type => SCALAR, 
            optional => 1,
            # default precision is 4
            default => 4,
            # must be a digit
            regex => qr/^\d+$/, 
        } 
    );

    my ($precision) = @params;
    
    my $area = pi * ($radius * $radius);
    
    return sprintf("%.${precision}f", $area);
} 


sub BUILD {
    my $self = shift;

    $self->diameter($self->radius * 2);
} 

1;
