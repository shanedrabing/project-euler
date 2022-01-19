sub is_palindromic {
    $n = shift;
    $m = reverse $n;
    return $n eq $m;
}

$max = 0;

for ($a = 1; $a < 1000; $a += 1) {
    for ($b = $a; $b < 1000; $b += 1) {
        $p = $a * $b;
        if (is_palindromic($p) && $max < $p) {
            $max = $p;
        }
    }
}

print $max . "\n";
