#
#===============================================================================
#  DESCRIPTION: 
#
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#      VERSION: 1.0
#===============================================================================

package LearningPerl::Chapter5::Workbook;

use Modern::Perl '2012';

# 5.1. Write a program to read lines from all of the files on the command line
# and print out each line prefaced with its filename.
#
sub preface_lines {
#    my	(@files) = @_;
  
    foreach my $file (@_) {
        open my ($FILEX), '<', $file;

        $file = 'STDIN' if $file eq '-';

        while (<$FILEX>) {
            print $file,": ",  $_;
        }

        close $FILEX;
    }

}

# My OLD 5.2 answer; the workbook's answer using the - operator is much more
# maintainable.
#
# 5.2. Modify your answer for Exercise 5.1 so after it reads lines from the
# files you specify on the command line, it reads in lines from standard input
# and prefaces the line with stdin.
#
sub preface_lines_stdin {
    my $standard_in = shift || "";
    my (@files) = @_;
  
    foreach my $file (@_) {
        open my ($FILEX), '<', $file;

        while (<$FILEX>) {
            print $standard_in,": ",  $_;
        }

        close $FILEX;
    }

}

# 5.4. Write a program that prompts the user for a whole number then prints
# that number in binary, octal, decimal, and hexadecimal notation.
#
sub all_number_formats {
    my $number = shift;
    my @formatted;

    # binary
    push @formatted, sprintf("%#b", $number);
    # octal
    push @formatted, sprintf("%#o", $number);
    # decimal
    push @formatted, sprintf("%#d", $number);
    # hex
    push @formatted, sprintf("%#x", $number);

    return @formatted;
}

1;
