n=0;

check=0;
while (( check == 0 )); do
    check=1;
    (( n += 380 ));
    for (( m = 19; 1 <= m; m -= 1 )); do
        if (( n % m != 0 )); then
            check=0;
            break;
        fi
    done
done

echo $n;
