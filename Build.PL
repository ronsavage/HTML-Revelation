use strict;
use warnings;

use Module::Build;

my $class = Module::Build->subclass(code => <<'EOF');

sub ACTION_authortest
{
	my($self) = @_;

	$self->depends_on('build');
	$self->depends_on('manifest');
	$self->depends_on('distmeta');

	$self->test_files( qw< t xt/author > );
	$self->recursive_test_files(1);

	$self->depends_on('test');

	return;
}
EOF

$class -> new
(
	module_name    => 'HTML::Revelation',
	license        => 'artistic_2',
	dist_abstract  => 'Reveal HTML document structure in a myriad of colors',
	dist_author    => 'Ron Savage <ron@savage.net.au>',
	build_requires =>
	{
		'Test::More' => 1.001006,
#		'Test::Pod'  => 1.45, # Make it optional. See t/pod.t
	},
	configure_requires =>
	{
 		'Module::Build' => 0.4210,
	},
	requires =>
	{
		'accessors::classic'          => 1.01,
		'File::Spec'                  => 0,
		'HTML::Entities::Interpolate' => 1.06,
		'HTML::Tagset'                => 3.20,
		'HTML::TreeBuilder'           => 5.03,
		'List::Cycle'                 => 1.02,
	},
	resources =>
	{
		bugtracker => 'https://rt.cpan.org/Public/Dist/Display.html?Name=HTML-Revelation',
		license    => 'http://opensource.org/licenses/Artistic-2.0',
		repository => 'https://github.com/ronsavage/HTML-Revelation',
	},
) -> create_build_script();

