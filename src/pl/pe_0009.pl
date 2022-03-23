use strict;
use warnings;


# SCRIPT


for my $a (1..998) {
    for my $b (($a + 1)..(1000 - $a)) {
        my $c = 1000 - ($a + $b);
        if ($a * $a + $b * $b == $c * $c) {
            print $a . " " . $b . " " . $c . "\n";
            exit;
        }
    }
}
