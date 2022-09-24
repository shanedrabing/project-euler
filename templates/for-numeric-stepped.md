# For-Loop (numeric, stepped)

```c
int n = 1;
for (int i = 1; i <= 10; i += 2) {
    printf("%d\n", n);
    n *= i;
}
```

```cpp
int n = 1;
for (int i = 1; i <= 10; i += 2) {
    std::cout << n << std::endl;
    n *= i;
}
```

```go
n := 1
for i := 1; i <= 10; i += 2 {
    println(n)
    n *= i;
}
```

```java
int n = 1;
for (int i = 1; i <= 10; i += 2) {
    System.out.println(n);
    n *= i;
}
```

```julia
n = 1
for i in range(1, 10, step=2)
    println(n)
    n *= i
end
```

```js
n = 1;
for (i = 1; i <= 10; += 2) {
    console.log(n);
    n *= i;
}
```

```pl
$n = 1;
for ($i = 1; $i <= 10; $i += 2) {
    print $n . "\n";
    $n *= $i;
}
```

```py
n = 1
for i in range(1, 10 + 1, 2):
    print(n)
    n *= i
```

```r
n = 1
for (i in seq.int(1, 10, 2) {
    message(n)
    n <- n * i
}
```

```sh
n=1;
for (( i = 1; i < 10; i += 2 )); do
    echo $n;
    (( n *= i ));
done
```
