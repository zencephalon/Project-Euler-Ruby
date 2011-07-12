def solution
    divisor_sums = Array.new(10000, 0)

    1.upto(10000) do |n|
        k = 2
        m = n * k
        while m <= 9999
            divisor_sums[m] = divisor_sums[m] + n
            m = n * (k += 1)
        end
    end

    total = 0

    2.upto(9999) do |n|
        s_n = divisor_sums[n]
        if s_n <= 9999 and s_n != n
            if n == divisor_sums[s_n]
                total += n
            end
        end
    end
    total
end

puts solution
