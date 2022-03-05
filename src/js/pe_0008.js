// FUNCTIONS


function prod(arr) {
    return arr.reduce((a, b) => a * b, 1);
}


// SCRIPT


const fh = require('fs')
const text = fh.readFileSync("data/pe_0008.txt", "utf8")
let arr = [0, 0, 0, 0];

let i = 0;
let hold = 0;

for (let j = 0; j < text.length; j++) {
    let c = text[j];
    if ('0' <= c && c <= '9') {
        arr[i % 4] = parseInt(c);
        let p = prod(arr);
        if (hold < p) {
            hold = p;
        }
        i++;
    }
}

console.log(hold);
