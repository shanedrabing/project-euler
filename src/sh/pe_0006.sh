# FUNCTIONS


function sum_of_squares() {
    s=0;
    for n in ${arr[@]}; do
        (( s += n ** 2 ));
    done
    echo $s
}

function square_of_sum() {
    s=0;
    for n in ${arr[@]}; do
        (( s += n ));
    done
    (( s = s ** 2 ));
    echo $s
}


# SCRIPT


arr=$(seq 1 100);
ssq=$(sum_of_squares ${arr[@]});
sqs=$(square_of_sum ${arr[@]});

echo $(( sqs - ssq ));
