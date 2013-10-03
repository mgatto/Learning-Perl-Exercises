#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Modify the regular expressions from Exercise 8.1 to match the
#  "a", "b", or "x" at the beginning of the string. After that, modify it to
#  match any of those characters at the end of the string. (Answer
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';:q

use utf8;
 
my $_ = "this is abc and not xyz.";
if ( m{\A[abx]}i ) say "It matched at the beginning!";
if ( m{[abx]\z}i ) say "It matched at the end!";

