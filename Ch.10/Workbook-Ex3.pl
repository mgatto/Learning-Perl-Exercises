#!/usr/bin/env perl
#===============================================================================
# DESCRIPTION: Write a program that read line of input and splits it into
# words. Use a hah to keep the count of the number of time you've seen each
# word, then create a report of the count of each word. Does it count
# uppercase and lowercase versions of the same word? Does it handle
# punctuation and other "non-word" characters?
#   
# NOTES: ---
# AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
# CREATED: 7/29/2013 08:18:13 PM
#===============================================================================

use Modern::Perl '2012';
use utf8;
use Data::Dumper;

my %word_counts;

while (<STDIN>) {
    chomp;
# say Dumper(\@_, \$_);    
    report_count(\%word_counts) if grep(/quit|exit/, $_);

    # split up words
    my @words = split;

    foreach my $item (@words) {
        if ( defined($word_counts{$item}) ) {
            $word_counts{$item}++;
        } else { 
            $word_counts{$item} = 1;
        }
    }
}

sub report_count {
    my $word_counts_ref = shift;
    my %word_counts = %$word_counts_ref;
    
    foreach my $word (keys %word_counts) {
#        sprintf("%s: %s\r\n", $word, $word{$count});
    }

}









































