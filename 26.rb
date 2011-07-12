load "factors.rb"

def multiplicative_order(a, m)
    i = 1
    k = a % m
    until a % m == 1
        a = (a * k) % m
        i += 1
    end
    i
end

def period(n)
    if (gcd(10, n) != 1)
        return 0
    else
        multiplicative_order(10, n)
    end
end

def solution
    max, num = 0, 0
    2.upto(999) do |i|
        k = period(i)
        max, num = k, i if max < k
    end
    num
end

puts solution
