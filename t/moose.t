#!/usr/bin/env perl

use strict;
use warnings;

use lib 'test-data/lib';

use App::perlimports::Document ();
use Test::More import => [ 'done_testing', 'is', 'subtest' ];

subtest 'Moose' => sub {
    my $doc
        = App::perlimports::Document->new(
        filename => 'test-data/lib/Local/UsesMoose.pm' );

    my $expected = <<'EOF';
package Local::UsesMoose;

use Moose;

has foo => (
    is  => 'ro',
    isa => 'Str',
);

__PACKAGE__->meta->make_immutable;
1;
EOF

    is(
        $doc->tidied_document,
        $expected,
        'document unchanged'
    );
};

subtest 'Import::Into' => sub {
    my $doc = App::perlimports::Document->new(
        filename => 'test-data/lib/Local/MyOwnMoose.pm',
    );

    my $expected = <<'EOF';
package Local::MyOwnMoose;

use strict;
use warnings;

use Import::Into;

sub import {
    $_->import::into( scalar caller ) for qw( Moose );
}

1;
EOF

    is(
        $doc->tidied_document,
        $expected,
    );
};

subtest 'Uses MyOwnMoose' => sub {
    my $doc = App::perlimports::Document->new(
        filename => 'test-data/lib/Local/UsesMyOwnMoose.pm',
    );

    my $expected = <<'EOF';
package Local::UsesMyOwnMoose;

use strict;
use warnings;

use Local::MyOwnMoose;

1;
EOF

    is(
        $doc->tidied_document,
        $expected,
    );
};

done_testing();
