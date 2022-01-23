# Project Euler

<details><summary>If, Else-If, and Else</summary>

<details><summary>c</summary>

```c
int i = 10;
if (i % 15 == 0) {
    printf("FizzBuzz\n");
} else if (i % 3 == 0) {
    printf("Fizz\n");
} else if (i % 5 == 0) {
    printf("Buzz\n");
} else {
    printf("%d\n", i);
}
```

</details>

<details><summary>cpp</summary>

```cpp
int i = 10;
if (i % 15 == 0) {
    std::cout << "FizzBuzz" << std::endl;
} else if (i % 3 == 0) {
    std::cout << "Fizz" << std::endl;
} else if (i % 5 == 0) {
    std::cout << "Buzz" << std::endl;
} else {
    std::cout << i << std::endl;
}
```

</details>

<details><summary>go</summary>

```go
i := 10
if i % 15 == 0 {
    println("FizzBuzz")
} else if i % 3 == 0 {
    println("Fizz")
} else if i % 5 == 0 {
    println("Buzz")
} else {
    println(i)
}
```

</details>

<details><summary>java</summary>

```java
int i = 10;
if (i % 15 == 0) {
    System.out.println("FizzBuzz");
} else if (i % 3 == 0) {
    System.out.println("Fizz");
} else if (i % 5 == 0) {
    System.out.println("Buzz");
} else {
    System.out.println(i);
}
```

</details>

<details><summary>julia</summary>

```julia
i = 10
if i % 15 == 0
    println("FizzBuzz")
elseif i % 3 == 0
    println("Fizz")
elseif i % 5 == 0
    println("Buzz")
else
    println(i)
end
```

</details>

<details><summary>js</summary>

```js
i = 10;
if (i % 15 == 0) {
    console.log("FizzBuzz");
} else if (i % 3 == 0) {
    console.log("Fizz");
} else if (i % 5 == 0) {
    console.log("Buzz");
} else {
    console.log(i);
}
```

</details>

<details><summary>pl</summary>

```pl
$i = 10;
if ($i % 15 == 0) {
    print "FizzBuzz\n";
} elsif ($i % 3 == 0) {
    print "Fizz\n";
} elsif ($i % 5 == 0) {
    print "Buzz\n";
} else {
    print $i . "\n";
}
```

</details>

<details><summary>py</summary>

```py
i = 10
if i % 15 == 0:
    print("FizzBuzz")
elif i % 3 == 0:
    print("Fizz")
elif i % 5 == 0:
    print("Buzz")
else:
    print(i)
```

</details>

<details><summary>r</summary>

```r
i = 10;
if (i %% 15 == 0) {
    cat("FizzBuzz\n");
} else if (i %% 3 == 0) {
    cat("Fizz\n");
} else if (i %% 5 == 0) {
    cat("Buzz\n");
} else {
    cat(i, "\n");
}
```

</details>

<details><summary>sh</summary>

```sh
i=10;
if (( i % 15 == 0 )); then
    echo "FizzBuzz";
elif (( i % 3 == 0 )); then
    echo "Fizz";
elif (( i % 5 == 0 )); then
    echo "Buzz";
else
    echo "$i";
fi
```

</details>

</details>
