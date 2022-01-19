n=600851475143;

i=2;
while (( n != 1 )); do
    if (( n % i == 0 )); then
        (( n /= i ));
    else
        (( i += 1 ));
    fi
done

echo $i;
