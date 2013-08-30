#!/usr/bin/env perl
#
#=============================================================================
#  DESCRIPTION: Use the XML::Twig module to process this XML snippet to 
#               remove the <bowling_score>element from this snippet of XML   
#               data: 
#               <?xml version =" 1.0"?><characters><character><name>Fred Flintstone</name><score>250</score><league>Adult</league></character><character><name>Barney Rubble</name><score>230</score><league>Adult</league></character><character><name>Dino</name><score>30</score><league>Pets</league></character></characters>
#
#  NOTES: ---
#  AUTHOR: Michael Gatto (mgatto), mgatto@lisantra.com
#  CREATED: 8/16/2013 07:57:22 AM
#=============================================================================

use Modern::Perl '2012';
use Xml::Twig;
use utf8; 

my $twig = XML::Twig->new(
    twig_handlers => {
        bowling_score => sub { $_->delete; },
    },
    pretty_print => 'indented',
);
$twig->parse(\*DATA);

$twig->print;


__DATA__
<?xml version="1.0"?>
<characters>
    <character>
        <name>Fred Flintstone</name>
        <bowling_score>250</bowling_score>
        <league>Adult</league>
    </character>
    <character>
        <name>Barney Rubble</name>
        <bowling_score>230</bowling_score>
        <league>Adult</league>
    </character>
    <character>
        <name>Dino</name>
        <score>30</score>
        <league>Pets</league>
    </character>
</characters>

