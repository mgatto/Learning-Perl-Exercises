#!/usr/bin/env perl

#=============================================================================
#  DESCRIPTION: Make a program to identify the oldest file named on the
#  command line and report its age in days. What does it do if the list
#  is empty? (That is, if no files are mentioned on the command line.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 8/31/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
#use File::stat;
#use Time::piece;
use Time::localtime;
use utf8;

say sort_ctimes(@ARGV);

sub sort_ctimes {
    my %ctimes;

    for my $file (@_) {
        #add an entry to the hash
        $ctimes{$file} = (stat($file))[9];
    }

    my $name = (sort { $ctimes{$a} <=> $ctimes{$b} } keys %ctimes)[0];
	#say ctime($ctimes{$name});

    return $name;
 }

exit 0;
