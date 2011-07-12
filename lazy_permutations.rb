def permutation_factory(list)
    permutations = Fiber.new do
        if list.length == 1
            Fiber.yield list.join
        else
            list.each do |i|
                l = list.dup; l.delete(i)
                p = permutation_factory(l)
                (1..l.size).inject(:*).times do
                    Fiber.yield (i.to_s + p.resume)
                end
            end
        end
    end
    permutations
end
