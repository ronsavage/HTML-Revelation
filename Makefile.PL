use strict;
use warnings;

use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
		AUTHOR   => 'Ron Savage (ron@savage.net.au)',
		ABSTRACT => 'Reveal HTML document structure in a myriad of colors',
	) : (),
	clean =>
	{
		FILES => 'blib/* Makefile MANIFEST HTML-Revelation-*'
	},
	dist =>
	{
		COMPRESS => 'gzip',
		SUFFIX   => 'gz'
	},
	DISTNAME  => 'HTML-Revelation',
	NAME      => 'HTML::Revelation',
	LICENSE   => 'artistic_2',
	PL_FILES  => {},
	PREREQ_PM =>
	{
		'accessors::classic'          => 1.01,
		'File::Spec'                  => 0,
		'HTML::Entities::Interpolate' => 1.06,
		'HTML::Tagset'                => 3.20,
		'HTML::TreeBuilder'           => 5.03,
		'List::Cycle'                 => 1.02,
		'Test::More'                  => 1.001006,
#		'Test::Pod'                   => 1.45, # Make it optional. See t/pod.t
	},
	VERSION_FROM => 'lib/HTML/Revelation.pm',
);
