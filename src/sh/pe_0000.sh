n=1;
for i in {1..10}; do
    echo $n;
    (( n *= i ));
done
