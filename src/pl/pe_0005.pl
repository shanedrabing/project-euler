$n = 0;
$check = 0;
while ( $check == 0 ) {
    $check = 1;
    $n += 20 * 19;
    for ( $m = 19; 1 <= $m; $m -= 1 ) {
        if ( $n % $m != 0 ) {
            $check = 0;
            break;
        }
    }
}

print $n . "\n";
