use strict;
use warnings;


# FUNCTIONS


sub is_prime_6k1 {
    my $n = shift;

    if ($n <= 3) {
        return $n > 1;
    } elsif ($n % 2 == 0 || $n % 3 == 0) {
        return 0;
    }

    my $i = 5;
    while ($i * $i <= $n) {
        if ($n % $i == 0 || $n % ($i + 2) == 0) {
            return 0;
        }
        $i += 6;
    }

    return 1;
}


# SCRIPT


my $i = 1;
my $n = 1;
while ($i != 10001) {
    $n += 2;
    $i += is_prime_6k1($n);
}

print $n . "\n";
