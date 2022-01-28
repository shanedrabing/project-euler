# FUNCTIONS


function is_prime_6k1(n)
    if n <= 3
        return n > 1
    elseif n % 2 == 0 || n % 3 == 0
        return false
    end

    i = 5
    while i * i <= n
        if n % i == 0 || n % (i + 2) == 0
            return false
        end
        i += 6
    end

    return true
end


# SCRIPT


function main()
    i = 1
    n = 1
    while i != 10001
        n += 2
        i += is_prime_6k1(n)
    end

    println(n)
end

main()
