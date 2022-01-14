var n = 600851475143;
var i = 2;
while (n != 1) {
    if (n % i == 0) {
        n = n / i;
    } else {
        i = i + 1;
    }
}

console.log(i);
