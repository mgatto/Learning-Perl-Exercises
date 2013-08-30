#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Using the File::Spec module, write a program that takes a
#               directory path from the command line and adds it to every file in
#               the current working directory to create an absolute path. You
#               shouldn't have to hardcode any directory separator characters in
#               your program.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 8/25/2013 20:09:11 PM
#=============================================================================

use Modern::Perl '2012';
use File::Spec;
#use Cwd;
use utf8;

my $path = $ARGV[0] // File::Spec->rel2abs(); #getcwd;

# loop through files in current working directory
foreach my $file ( glob "*.*" ) {
    # prepend $path
    printf "%s\r\n", File::Spec->join($path, $file);
}

exit 0;
 
