# SCRIPT


function main()
    hold = 0
    arr = [0, 0, 0, 0]

    fh = open("data/pe_0008.txt","r")
    
    i = 0
    while !eof(fh)
        c = read(fh, Char)
        if '0' <= c && c <= '9'
            n = parse(Int, c)
            arr[1 + i % 4] = n
            p = prod(arr)
            if hold < p
                hold = p
            end
            i += 1
        end
    end
    
    close(fh)
    println(hold)
end

main()
