use strict;
use warnings;

use lib 't/lib';

use App::perlimports ();
use Test::More import => [qw( done_testing is is_deeply ok )];

my $e = App::perlimports->new(
    filename    => 't/lib/UsesMoo.pm',
    source_text => 'use Moo;',
);
is(
    $e->module_name(), 'Moo',
    'module_name'
);

is_deeply( $e->_exports, [], '_exports' );
ok( $e->_is_ignored, '_is_ignored' );
is_deeply( $e->_imports, [], '_imports' );
is(
    $e->formatted_import_statement,
    q{use Moo;},
    'formatted_import_statement'
);

done_testing();
