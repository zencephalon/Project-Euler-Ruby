def permutations(list, target)
    if list.size == 2
        return [list.join, list.reverse.join]
    else
        output, k = [], 0
        list.each do |i|
            l = list.dup; l.delete(i)
            permutations(l, nil).each do |p|
                output << (i.to_s + p)
                k += 1
                return (i.to_s + p) if k == target
            end
        end
        return output
    end
end

def solution
    permutations([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 1_000_000)
end

puts solution
