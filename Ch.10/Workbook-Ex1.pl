#!/usr/bin/env perl 
#===============================================================================
#  DESCRIPTION: Write a program that reads in lines of input and prints them
#               unless they contain the words "ruby" or "python". 
#
#        NOTES: ---
#       AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#      CREATED: 7/20/2013 1:38:27 PM
#===============================================================================

use Modern::Perl '2012';
use utf8;

print "Enter some text: ";


while (<>) {
    next if m/ruby|python;
    print;
}

__END__

exit 0;

#chomp(my $lines = <STDIN>);
#print $line unless $line =~ /ruby/ || $line =~ /python/;
