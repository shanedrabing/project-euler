function main()
    n = 0
    check = 0

    while (check == 0)
        check = 1
        n += 20 * 19
        for m in 19:-1:1
            if (n % m != 0)
                check = 0
                break
            end
        end
    end

    println(n)
end

main()
