use strict;
use warnings;
use Scalar::Util qw(looks_like_number);


# SCRIPT


my @arr = (0, 0, 0, 0);

my $i = 0;
my $hold = 0;

open(my $fh, " data/0008.txt") or die "Error opening file";

while (<$fh>) {
    my @chars = split //;
    for my $char (@chars) {
        if (!looks_like_number($char)) {
            next
        }

        $i++;
        @arr[$i % 4] = $char;

        # product
        my $p = 1;
        for my $m (@arr) {
            $p *= $m;
        }

        # find max
        if ($hold < $p) {
            $hold = $p;
        }
    }
}

print $hold . "\n";
