#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: ex_textbook_3-3.pl
#
#        USAGE: ./ex_textbook_3-3.pl  
#
#  DESCRIPTION: 3. [8] Write a program that reads a list of strings (on
#  separate lines) until end-of-input.
#  Then it should print the strings in code point order. That is, if you enter
#  the strings
#  fred, barney, wilma, betty, the output should show barney betty fred wilma.
#  Are
#  all of the strings on one line in the output or on separate lines? Could
#  you make the output appear in either style?
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 4/14/2013 3:43:30 PM
#     REVISION: ---
#===============================================================================

use Modern::Perl '2012';

my @flinstones = qw(fred betty barney dino wilma pebbles bamm-bamm);

sub get_flinstones {
    my @flinstones = @{$_[0]};
    #print "@flinstones";

    my $print_style = shift || "single_line";

    if ( $print_style eq "new_lines" ) {
        my @mapped_flinstones = map { $_ . "\r\n"  } @flinstones;
        return "@mapped_flinstones";
    } else {
        my @sorted_flinstones = sort(@flinstones);
        return "@sorted_flinstones";
    }
}

# Apparently, in Perl one can pass array refs to subs, but not arrays
# directly. When you do (@flinstones), Perl thinks each element in the list
# is a separate arg to the sub! Cool! A reference passes the whole list in as
# a whole var: http://www.perlmonks.org/?node_id=439926
print get_flinstones(\@flinstones, "new_lines");

