function reverse_number() {
    n=$1;
    m=0;
    while (( n != 0 )); do
        (( m *= 10 ));
        (( m += n % 10 ));
        (( n /= 10 ));
    done
    echo $m;
}

max=0;

for (( a = 100; a < 1000; a++ )); do
    for (( b = max / a < a ? a : max / a; b < 1000; b++ )); do
        (( p = a * b ));

        q=$(reverse_number $p);
        if (( p == q )); then
            max=$p;
        fi
    done
done

echo $max;
