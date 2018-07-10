def multiples_3_5(nb)
    i = 0
    sum = 0

    while i < nb
        if i % 3 == 0 || i % 5 == 0
            sum = sum + i 
        end
        i += 1
    end
    puts sum 
end

multiples_3_5(1000)