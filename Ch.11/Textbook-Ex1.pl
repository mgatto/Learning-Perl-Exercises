#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Install the Module::CoreList module from CPAN. Print a list 
#               of all of the modules that came with Perl 5.14. To build a 
#               hash whose keys are the names of the modules that came with a 
#               given version of perl, use this line:
#                   my %modules = %{ $Module::CoreList::version{5.014} };
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 7/31/2013 09:58:08 AM
#=============================================================================

use Modern::Perl '2012';
use Module::CoreList;
use utf8; 
 
 # make a list of modules
 my %modules = %{ $Module::CoreList::version{5.014} };
 
 # print to screen
 say "Modules that came with Perl 5.14:";
 foreach my $module ( keys %modules ) {
    printf "%s - %5s\r\n", $module, $modules{$module} // "N/A";
 }
 
 exit 0;