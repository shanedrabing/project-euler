# FUNCTIONS


function sum_of_squares(vec)
    return sum(n^2 for n in vec)
end

function square_of_sum(vec)
    return sum(vec)^2
end


# SCRIPT


function main()
    vec=1:100
    println(square_of_sum(vec) - sum_of_squares(vec))
end

main()
