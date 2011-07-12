require "set"

MAX = 20161

def solution
    divisor_sums = Array.new(MAX + 1, 0)

    1.upto(MAX) do |n|
        k = 2
        m = n * k
        while m <= MAX
            divisor_sums[m] = divisor_sums[m] + n
            m = n * (k += 1)
        end
    end

    abundants = []
    1.upto(MAX) do |i|
        if divisor_sums[i] > i
            abundants << i
        end
    end

    s = Set.new
    until abundants.empty?
        n = abundants.shift
        s.add(n * 2)
        abundants.each do |k|
            sum = n + k
            break if sum > MAX
            s.add(sum)
        end
    end
    (Set.new(1..MAX) - s).inject(:+)
end

puts solution
