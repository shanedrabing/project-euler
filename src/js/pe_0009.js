// FUNCTIONS


function is_triplet(a, b, c) {
    return (a < b < c) && (a * a + b * b == c * c)
}


// SCRIPT


for (let a = 1; a < 999; a++) {
    for (let b = a + 1; b < (1000 - a); b++) {
        let c = 1000 - (a + b);
        if (is_triplet(a, b, c)) {
            console.log("%d %d %d", a, b, c);
            process.exit();
        }
    }
}
