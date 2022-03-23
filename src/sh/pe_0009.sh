# SCRIPT


for a in {1..998}; do
    for (( b=a + 1; b < (1000 - a); b++ )); do
        (( c=1000 - (a + b) ));
        if (( a * a + b * b == c * c )); then
            echo "$a $b $c";
            exit;
        fi
    done
done
