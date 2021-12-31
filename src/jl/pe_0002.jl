function main()
    gross = 0
    a = 1
    b = 2

    while a < 4e6
        if a % 2 == 0
            gross += a
        end
        c = a + b
        a = b
        b = c
    end

    println(gross)
end

main()
