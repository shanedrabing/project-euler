var gross = 0;
var a = 1;
var b = 2;

while (a < 4e6) {
    if (a % 2 == 0) {
        gross += a;
    }
    c = a + b;
    a = b;
    b = c;
}

console.log(gross);
