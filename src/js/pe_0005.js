var n = 0;
var check = 0;

while ( check == 0 ) {
    check = 1;
    n += 20 * 19;
    for (var m = 19; 1 <= m; --m) {
        if ( n % m != 0 ) {
            check = 0;
            break;
        }
    }
}

console.log(n);
