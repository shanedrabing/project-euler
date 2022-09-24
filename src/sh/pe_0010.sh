# SCRIPT


{
    # initialize variables
    size=2000000
    gross=2

    # initialize array
    prime=()
    for (( i=0; i<size; i++ )); do
        (( i % 2 == 1)) && prime+=(1) || prime+=(0);
    done

    # one is not prime, two is
    prime[1]=0;
    prime[2]=0;

    # disregard multiples of primes
    for (( i = 3; i < size / 2; i += 2 )); do
        if (( prime[i] )); then
            (( gross += i ));
            for (( j = i * 2; j < size; j += i )); do
                prime[$j]=0;
            done
        fi
    done

    # continue the sum
    for (( ; i < size; i += 2)); do
        (( prime[i] )) && (( gross += i ));
    done

    # print out
    echo $gross;
}
