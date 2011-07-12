$collatz_length = {1 => 0}

def get_collatz_length(n)
    return $collatz_length[n] if $collatz_length[n]
    l = 0
    k = n
    until $collatz_length[k]
        if k % 2 == 0
            k /= 2
        else
            k = 3 * k + 1
        end
        l += 1
    end

    $collatz_length[n] = l + $collatz_length[k]
end

def solution
    max, num = 0
    (1..1000_000).each do |i|
        n = get_collatz_length(i)
        max, num = n, i if max < n
    end
    num
end                                                                        

puts solution
