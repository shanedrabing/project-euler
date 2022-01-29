# For-Loop (numeric)

```c
int n = 1;
for (int i = 1; i <= 10; ++i) {
    printf("%d\n", n);
    n *= i;
}
```

```cpp
int n = 1;
for (int i = 1; i <= 10; ++i) {
    std::cout << n << std::endl;
    n *= i;
}
```

```go
n := 1
for i := 1; i <= 10; i++ {
    println(n)
    n *= i;
}
```

```java
int n = 1;
for (int i = 1; i <= 10; ++i) {
    System.out.println(n);
    n *= i;
}
```

```julia
n = 1
for i in 1:10
    println(n)
    n *= i
end
```

```js
n = 1;
for (i = 1; i <= 10; ++i) {
    console.log(n);
    n *= i;
}
```

```pl
$n = 1;
for ($i = 1; $i <= 10; ++$i) {
    print $n . "\n";
    $n *= $i;
}
```

```py
n = 1
for i in range(1, 10 + 1):
    print(n)
    n *= i
```

```r
n = 1
for (i in 1:10) {
    message(n)
    n <- n * i
}
```

```sh
n=1;
for i in {1..10}; do
    echo $n;
    (( n *= i ));
done
```
