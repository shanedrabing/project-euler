package main


// FUNCTIONS


func sum(arr []int) int {
    gross := 0
    for _, n := range arr {
        gross += n
    }
    return gross
}

func sum_of_squares(arr []int) int {
    gross := 0
    for _, n := range arr {
        gross += n * n
    }
    return gross
}

func square_of_sum(arr []int) int {
    gross := sum(arr)
    return gross * gross
}


// SCRIPT


func main() {
    arr := []int{}
    for n := range [100]int{} {
        arr = append(arr, n + 1)
    }
    println(square_of_sum(arr) - sum_of_squares(arr))
}
