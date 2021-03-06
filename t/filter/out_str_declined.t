use strict;
use warnings FATAL => 'all';

use Apache::Test;
use Apache::TestRequest;
use Apache::TestUtil;

plan tests => 1;

my $expected = 11; # 10 flushes and 1 EOS bb

my $location = '/TestFilter__out_str_declined';
my $response = GET_BODY $location;
ok t_cmp($response, $expected, "an output filter handler returning DECLINED");

