#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a regular expression to match an "a"," b", or "x" in a
#  string. Use a character class. After you do that, make it case
#  insensitive.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

my $_ = "this is abc and not xyz.";
if ( m{[abx]}i ) say "It matched!";

