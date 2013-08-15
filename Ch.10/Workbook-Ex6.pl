#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Perl has a special token, __END__, which marks the end of a 
#               program when it shows up by itself. Modify your answer to Ex.5 
#               so that you stop reading the lines when you encounter that 
#               token.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 7/31/2013 08:59:52 AM
#=============================================================================

use Modern::Perl '2012';
use utf8;

my $perl_program = $ARGV[0];
my $line_count = 0;

open(my $perl_fh, "<", $perl_program);

while (<$perl_fh>) {
    # stop if reached __END__
    last if m/^__END__$/;

    # print unless m/^#|^\s$/;
    $line_count++ unless m/^#|^\s$/;
}

printf("%s has %d lines.\r\n", $perl_program, $line_count); 