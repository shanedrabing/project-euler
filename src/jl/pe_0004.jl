function reverse_number(n::Integer)
    m = 0
    while (n != 0)
        m *= 10
        m += n % 10
        n ÷= 10
    end
    return m
end

function is_palindromic(n)
    return n == reverse_number(n)
end

function main()
    max = 0

    for a in 100:1000
        for b in a:1000
            p = a * b
            if (is_palindromic(p) && max < p)
                max = p
            end
        end
    end

    println(max)
end

main()
