#
#===============================================================================
#
#         FILE: ex4-workbook.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 4/25/2013 1:32:27 PM
#     REVISION: ---
#===============================================================================

package LearningPerl::Chapter4::Workbook;

use Modern::Perl '2012';

#4.1 Write sub which prints out own args: return "The arguments are ..."
sub show_args {
    my $arg_string = "The arguments are ";
    for (@_) {
       $arg_string .= $_ . ' ';
    }

    # implicit return
    $arg_string;
}

# 4.2  
sub show_args_again {
    print "The arguments are [@_]";

    #4.3 
    #show_args();

    #4.4
    show_args( reverse @_ );
}

# 4.5 call as apply_op "+",1,2,...;

sub add {
    my $result;
    for (@_) {
        $result += $_;
    }
    return $result;
}

sub multiply {
    # for multiplication, I must initialize to 1; otherwise I get a Perl
    # warning AND a result that is always zero!
    my $result = 1;
    for (@_) {
        $result *= $_;
    }
    return $result;
}

sub divide {
    # must set to first item in the arg list, othwerwise we get incorrect results
    my $result = shift;
    for (@_) {
        $result /= $_;
    }
    return $result;
}
    
sub subtract {
    # must set to first item in the arg list, othwerwise we get incorrect results
    my $result = shift;
    for (@_) {
        $result -= $_;
    }
    return $result;
}

sub apply_op {
    my $operator = shift;
    my $func;

    if ( $operator eq "+" ) {
        $func = \&add;
    } elsif ( $operator eq "*" )  {
        $func = \&multiply;
    } elsif ( $operator eq "/" ) { 
        $func = \&divide;
    } elsif ( $operator eq "-" ) {
        $func = \&subtract;
    } else {
        die "Invalid operator";
    }

    # implicit return 
    &$func(@_);
}


#4.6 Separate a sentence's words with commas except for the last word: 'and'.
sub commafy {
    my $sentence = shift;



}


1;
