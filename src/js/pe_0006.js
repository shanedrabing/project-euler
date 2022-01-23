// FUNCTIONS


function sum(arr) {
    return arr.reduce((a, b) => a + b);
}

function sum_of_squares(arr) {
    return sum(arr.map(n => n ** 2));
}

function square_of_sum(arr) {
    return sum(arr) ** 2;
}


// SCRIPT


arr=[...Array(100).keys()].map(x => x + 1);
console.log(square_of_sum(arr) - sum_of_squares(arr));
