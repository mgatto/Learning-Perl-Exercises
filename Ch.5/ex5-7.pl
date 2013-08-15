#!/usr/bin/env perl 
#===============================================================================
#  DESCRIPTION: 
#
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#      VERSION: 1.0
#      CREATED: 6/9/2013 2:23:27 PM
#===============================================================================

use Modern::Perl '2012';
use utf8;

# Write a program that goes through the list of files from the command line
# and reports their line count. Use warn to print a message for each file that
# does not exist.
#

foreach my $file ( @ARGV ) {
    open my $FH, '<:utf8', $file || warn "Can't open file '$file'";
    
    my $line_count++ while <$FH>;

    # say "$file has $line_count lines";

    close $FH;
    # \$. hold line count of last closed file
    say "$file is closed, but had $. lines";
}
