#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Use the LWP:: Simple module to download and store the HTML 
#               source for http:// perldoc.perl.org/.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 8/16/2013 07:57:22 AM
#=============================================================================

use Modern::Perl '2012';
use LWP::Simple;
use utf8; 

my $content = getstore("http://perldoc.perl.org", "perldoc.perl.org.html") or die "LWP::Simple's getting failed";

exit 0;
