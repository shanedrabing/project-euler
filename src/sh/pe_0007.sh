# FUNCTIONS


function is_prime_6k1() {
    n=$1;

    if (( n <= 3 )); then
        echo $(( n > 1 ));
        return 1;
    elif (( n % 2 == 0 || n % 3 == 0 )); then
        echo 0;
        return 1;
    fi

    i=5;
    while (( i * i <= n )); do
        if (( n % i == 0 || n % (i + 2) == 0 )); then
            echo 0;
            return 1;
        fi
        (( i += 6 ));
    done

    echo 1;
}


# SCRIPT


i=1;
n=1;
while (( i != 10001 )); do
    (( n += 2 ));
    j=$( is_prime_6k1 $n );
    (( i += j ));
done

echo "$n";
