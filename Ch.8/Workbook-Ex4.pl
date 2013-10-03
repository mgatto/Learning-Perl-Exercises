#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a regular expression that matches a string that begins
#  and ends with the same thing, without overlap between the two parts of the
#  string.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

$_ = "";
if ( m/\A(.+).*\g{-1}\z/ ) say "String begins and ends with the same thing1";

