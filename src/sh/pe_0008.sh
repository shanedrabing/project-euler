# SCRIPT


arr=(0,0,0,0);

i=0;
hold=0;
while read -n 1 char; do
    if [[ $char =~ [0-9] ]]; then
        (( i++ ));
        arr[$(( i % 4 ))]=$char;

        # product
        p=1;
        for m in ${arr[@]}; do
            (( p *= m ));
        done;

        # find max
        if (( hold < p )); then
            hold=$p;
        fi
    fi
done < data/pe_0008.txt;

echo $hold;
