# Project Euler

Progress:

```txt
   c (  8): [#                                                                ]
 cpp (  8): [#                                                                ]
  go (  8): [#                                                                ]
java (  8): [#                                                                ]
  jl (  8): [#                                                                ]
  js (  8): [#                                                                ]
  pl (  8): [#                                                                ]
  py (  8): [#                                                                ]
   r (  8): [#                                                                ]
  sh (  8): [#                                                                ]
```

Click on the spoilers below for syntax hints!

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
