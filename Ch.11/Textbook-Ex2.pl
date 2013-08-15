#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Write a program using DateTime to compute the interval 
#               between now and a date that you enter as the year, month, and 
#               day on the command line: 
#                   $ perl duration.pl 1960 9 30
#                   50 years, 8 months, and 20 days
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 7/31/2013 10:01:32 AM
#=============================================================================

use Modern::Perl '2012';
use DateTime;
use utf8;

my $date = DateTime->new(
    year => $ARGV[0],
    month => $ARGV[1],
    day => $ARGV[2],
    time_zone => 'America/Phoenix',
);

my $now = DateTime->now;
my $interval = $now - $date; 
 
my $format = DateTime::Format::Duration->new(
    pattern => '%Y years, %m months, %e days, '
);

say $format->format_duration($interval);
 
#my ( $years, $months, $days ) = $interval->in_units('years', 'months', 'days'); 
#printf "%4d years, %d months and %d days ", $years, $months, $days;
 
exit 0;