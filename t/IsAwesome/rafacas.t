#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => "is_awesome_rafacas";
zci is_cached   => 1;

ddg_goodie_test(
    [qw( 
        DDG::Goodie::IsAwesome::rafacas )
    ],
    'duckduckhack rafacas' => test_zci('rafacas is awesome and has successfully completed the DuckDuckHack Goodie tutorial!'),
    'duckduckhack rafacas is awesome' => undef,
);

done_testing;