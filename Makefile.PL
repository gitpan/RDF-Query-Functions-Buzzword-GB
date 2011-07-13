use strict;
use warnings;

use inc::Module::Install;

my $dist = 'RDF-Query-Functions-Buzzword-GB';
my $fn   = "lib/$dist.pm"; $fn =~ s#-#/#g;

name                $dist;
perl_version_from   $fn;
version_from        $fn;
abstract_from       $fn;
readme_from         $fn;
author              'Toby Inkster <tobyink@cpan.org>';
license             'perl';

requires            'common::sense'      => 0;
requires            'RDF::Query'         => '2.903';
requires            'Scalar::Util'       => 0;
test_requires       'Test::More'         => '0.61';

resources(
	'homepage'   => "http://search.cpan.org/dist/$dist/",
	'repository' => "http://goddamn.co.uk/viewvc/perlmods/$dist/",
	'bugtracker' => "http://rt.cpan.org/Dist/Display.html?Queue=$dist",
	);

keywords(qw[SPARQL query extension functions plugin RDF Semantic Web SemWeb United Kingdom Great Britain GB UK England Wales Scotland Ireland]);

write_doap_changes;
write_doap_changes_xml;

auto_install;
WriteAll(
	'meta' => 1,
	'sign' => 1,
	);
