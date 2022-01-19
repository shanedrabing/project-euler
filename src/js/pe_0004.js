function reverse_number(n) {
    var m = 0;
    while (n != 0) {
        m *= 10;
        m += n % 10;
        n = Math.floor(n / 10);
    }
    return m;
}

function is_palindromic(n) {
    return n == reverse_number(n);
}

var max = 0;

for (var a = 1; a < 1000; a += 1) {
    for (var b = a; b < 1000; b += 1) {
        var p = a * b;
        if (is_palindromic(p) && max < p) {
            max = p;
        }
    }
}

console.log(max);
