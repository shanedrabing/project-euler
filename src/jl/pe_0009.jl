# SCRIPT


function main()
    for a in 1:998
        for b in (a + 1):(1000 - a)
            c = 1000 - (a + b);
            if (a * a + b * b == c * c)
                println(a, " ", b, " ", c)
                exit()
            end
        end
    end    
end

main()
