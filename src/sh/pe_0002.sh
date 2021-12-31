gross=0;
a=1;
b=2;

while (( a < 4000000 )); do
    if (( a % 2 == 0 )); then
        (( gross += a ));
    fi
    (( c = a + b ));
    a=$b;
    b=$c;
done

echo $gross;
