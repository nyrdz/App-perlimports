#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use Test::Differences qw( eq_or_diff );
use Test::More import => [ 'done_testing', 'subtest' ];
use TestHelper qw( doc );

subtest 'tidy_whitespace' => sub {
    my $expected = <<'EOF';
use strict;
use warnings;

use Carp ();
EOF
    my ($doc) = doc(
        filename        => 'test-data/preserve-spaces.pl',
        tidy_whitespace => 1,
    );

    eq_or_diff(
        $doc->tidied_document,
        $expected,
        'arbitrary spacing is preserved'
    );
};

subtest 'disable tidy_whitespace' => sub {
    my $expected = <<'EOF';
use strict;
use warnings;

use Carp    ();
EOF
    my ($doc) = doc(
        filename        => 'test-data/preserve-spaces.pl',
        tidy_whitespace => 0,
    );

    eq_or_diff(
        $doc->tidied_document,
        $expected,
        'arbitrary spacing is preserved'
    );
};

done_testing();
