#
#===============================================================================
#
#         FILE: Textbook.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 5/16/2013 11:59:42 AM
#     REVISION: ---
#===============================================================================

package LearningPerl::Chapter5::Textbook;

use Modern::Perl '2012';
 
# 1. Write a program like cat, but which reverses the lines of output.
sub tac {
    return reverse @_;
}

# 2. Write a program that asks the user to enter a list of strings on separate 
# lines, printing each string in a right-justified, 20-character column.
# To be certain that the output is in the proper columns, print a "ruler line" 
# of digits as well. (This is simply a debugging aid.) Make sure that you're not
# using a 19-character column by mistake! For example, entering hello, good-bye
# should give output something like this:
#
# 123456789012345678901234567890123456789012345678901234567890
#     hello
#     good-bye
sub print20cols {
    my @lines = shift;
    say "1234567890" x 4;

    foreach (@lines) {
        printf "%20s\n", $_;
    }
}

# 3.  Modify the previous program to let the user choose the column width, so
#  that entering 30, hello, good-bye (on separate lines) would put the strings 
#  at the 30th column. 
#
#  (Hint: see "Interpolation of Scalar Variables into Strings" on page
#  32 in Chapter 2, about controlling variable interpolation.) For extra credit,
#  make the ruler line longer when the selected width is larger.


1;
