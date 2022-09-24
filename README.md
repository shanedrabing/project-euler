# Project Euler

## Progress

Problem|C|C++|Go|Java|Julia|JavaScript|Perl|Python|R|Bash
-|-|-|-|-|-|-|-|-|-|-
1|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;
2|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;
3|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;
4|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;
5|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;
6|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;
7|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;
8|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;
9|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;
10|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;|&#x2713;

## Snippets

<details><summary>Control Flow (if, else-if, else)</summary><br>

Example in C

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

Example in C++

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

Example in Go

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

Example in Java

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

Example in Julia

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

Example in JavaScript

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

Example in Perl

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

Example in Python

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

Example in R

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

Example in Bash

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
<details><summary>For-Loop (numeric)</summary><br>

Example in C

```c
int n = 1;
for (int i = 1; i <= 10; ++i) {
    printf("%d\n", n);
    n *= i;
}
```

Example in C++

```cpp
int n = 1;
for (int i = 1; i <= 10; ++i) {
    std::cout << n << std::endl;
    n *= i;
}
```

Example in Go

```go
n := 1
for i := 1; i <= 10; i++ {
    println(n)
    n *= i;
}
```

Example in Java

```java
int n = 1;
for (int i = 1; i <= 10; ++i) {
    System.out.println(n);
    n *= i;
}
```

Example in Julia

```julia
n = 1
for i in 1:10
    println(n)
    n *= i
end
```

Example in JavaScript

```js
n = 1;
for (i = 1; i <= 10; ++i) {
    console.log(n);
    n *= i;
}
```

Example in Perl

```pl
$n = 1;
for ($i = 1; $i <= 10; ++$i) {
    print $n . "\n";
    $n *= $i;
}
```

Example in Python

```py
n = 1
for i in range(1, 10 + 1):
    print(n)
    n *= i
```

Example in R

```r
n = 1
for (i in 1:10) {
    message(n)
    n <- n * i
}
```

Example in Bash

```sh
n=1;
for i in {1..10}; do
    echo $n;
    (( n *= i ));
done
```

</details>
