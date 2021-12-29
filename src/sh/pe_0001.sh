gross=0;

for (( i = 0; i < 1000; i++ )); do
    if (( i % 3 == 0 || i % 5 == 0 )); then
        (( gross += i ));
    fi
done

echo $gross;
