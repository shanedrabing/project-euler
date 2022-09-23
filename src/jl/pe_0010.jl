# SCRIPT


function main()
    # initialize vairables
    size = 2000000
    half = size ÷ 2
    prime = BitArray(undef, size)

    # set two as prime, begin sum
    prime[2] = true
    gross = 2
    
    # all odds are potential primes
    for i in range(3, size, step=2)
        prime[i] = true
    end
    
    # disregard multiples of primes
    i = 3
    while i < half
        if prime[i] == 1
            gross += i
            for j in range(i * 2, size, step=i)
                prime[j] = false
            end
        end
        i += 2
    end

    # continue the sum
    for i in range(i, size, step=2)
        if prime[i]
            gross += i
        end
    end

    # print out
    println(gross)
end

main()
