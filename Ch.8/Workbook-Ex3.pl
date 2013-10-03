#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Modify your regular expression from Exercise 8.2 to match a
#  non-empty string that doesn't have an "a", "b", or "x" at the beginning of
#  the string. Change it again so the regular expression matches a non-empty
#  string that doesn't have those same characters at the end of the string.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 9/25/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

if ( m/\A[^abx]/ ) say "It excluded abx at the beginning!";
if ( m/[^abx]\z/ ) say "It excluded abx at the end!";
