use strict;
use warnings;


# SCRIPT


{
    # initialize variables
    my ($i, $j, $half);
    my $size = 2000000;
    my @prime = (0) * $size;

    {
        # integer division
        use integer;
        $half = $size / 2;
    }

    # set two as prime, begin sum
    $prime[2] = 1;
    my $gross = 2;

    # all odds are potential primes
    for ($i = 3; $i < $size; $i += 2) {
        $prime[$i] = 1;
    }

    # disregard multiples of primes
    for ($i = 3; $i < $half; $i += 2) {
        if ($prime[$i]) {
            $gross += $i;
            for ($j = $i * 2; $j < $size; $j += $i) {
                $prime[$j] = 0;
            }
        }
    }

    # continue the sum
    for (; $i < $size; $i += 2) {
        if ($prime[$i]) {
            $gross += $i;
        }
    }

    # print out
    print $gross . "\n";
}
