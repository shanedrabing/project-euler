use strict;
use warnings;
use List::Util qw(sum);


# FUNCTIONS


sub sum_of_squares {
    return sum(map {$_ ** 2} @_);
}

sub square_of_sum {
    return sum(@_) ** 2;
}


# SCRIPT


my @arr=(1..100);
print square_of_sum(@arr) - sum_of_squares(@arr) . "\n";
