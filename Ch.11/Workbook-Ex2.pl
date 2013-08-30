#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a program to take a list of file paths and break them 
#               into filename and path portions using the File::Basename 
#               module. Report the results in two columns.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 8/16/2013 07:57:22 AM
#=============================================================================

use Modern::Perl '2012';
use File::Basename;
use utf8; 

# Get the list
say "Enter a path on each line. End it with Ctrl+Z or Ctrl+D";
chomp(my @paths = <STDIN>);

# Loop and print parts in two columns
foreach my $path ( @paths ) {
    my ($filename, $directory) = fileparse($path);
    printf "%-1s %20s\r\n", $filename, $directory;
}

exit 0;
