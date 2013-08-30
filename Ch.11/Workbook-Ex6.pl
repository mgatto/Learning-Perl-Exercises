#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Use the DBI module with the DBD:: SQLite driver to create a 
#               small test database for SQLite. From your Perl program, 
#               create a table named “Characters” with columns for ID, First 
#               Name, and Last Name. Once you create the table, insert the 
#               names of the Flintstones characters we mention in Learning 
#               Perl. This exercise requires you to already know some SQL and 
#               how to interact with a relational database, so I’m adding 
#               some extra challenge on this one.
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 8/16/2013 07:57:22 AM
#=============================================================================

use Modern::Perl '2012';
use DBI;
use utf8; 

my $dbh = DBI->connect("dbi:SQLite:dbname=flinstones.sq3","","");

# Define schema for table 'characters'.
$dbh->do("
    CREATE TABLE Characters (id integer, first_name text, last_name text)
");

# Insert flinstones personalities
my $insert_sth = $dbh->prepare("INSERT INTO Characters VALUES (?,?,?)");
$insert_sth->execute(1,"fred","flinstone");
$insert_sth->execute(2,"wilma","flinstone");
$insert_sth->execute(3,"barney","rubble");
$insert_sth->execute(4,"betty","rubble");

my $find_sth = $dbh->prepare("SELECT * FROM Characters");
$find_sth->execute;

while ( my @character = $find_sth->fetchrow_array ) {
    printf "%d: %s %s\r\n", @character;
}

exit 0;

