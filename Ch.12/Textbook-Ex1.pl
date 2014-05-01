#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Make a program that takes a list of files named on the command
#  line and reports for each one whether it's readable, writeable, executable,
#  or doesn't exist.
#
#  (Hint: it may be helpful to have a function that will do all of the file tests for one file at a time.)
#
#  What does it report about a file that has been chmod’ed to 0? (That is, if
#  you’re on a Unix system, use the command chmod 0 some_file to mark that file
#  as neither being readable, writable, nor executable.) In most shells, use a
#  star as the argument to mean all of the normal files in the current directory.
#  That is, you could type something like ./ex12-2 * to ask the program for the
#  attributes of many files at once.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 8/31/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

for my $file (@ARGV) {
    say display_permissions($file);
}

sub display_permissions {
    my $filename = shift;
    my $text = "$filename is: ";
    my @perms;

    if (-r $filename)  { push @perms, "readable"; }
    if (-w $filename)  { push @perms, "writeable"; }
    if (-e $filename)  { push @perms, "executable"; }
    if (!-f $filename) { $text .= "does not exist"; }

    return $text . join(',', @perms);
}

exit 0;
