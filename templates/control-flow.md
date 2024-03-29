# Control Flow (if, else-if, else)

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
