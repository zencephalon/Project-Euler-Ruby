load "primes.rb"

module Factors
    def prime_factors(n)
        i = 0
        factors = {}
        until n == 1
            p = Primes[i]
            if n % p == 0
                add_factor(factors, p)
                n /= p
            else
                i += 1
            end
        end
        factors
    end

    def sum_of_proper_divisors(n)
        def power_sum(a, b)
            s = 1
            b.times { s = a*s + 1 }
            s
        end
        s = 1
        prime_factors(n).each {|p, e| s *= power_sum(p, e)}
        s - n
    end

    def number_of_divisors(n)
        prime_factors(n).each_value.inject(1) {|total, v| total * (v + 1)}
    end

    def euclidean_gcd(a, b)
        while b != 0
            t = b
            b = a % b
            a = t
        end
        a
    end
    
    def euclidean_lcm(a, b)
        return (a * b) / euclidean_gcd(a, b)
    end

    def gcd(a, *b)
        until b.empty?
            a = euclidean_gcd(a, b.pop)
        end
        a
    end

    def lcm(a, *b)
        until b.empty?
            a = euclidean_lcm(a, b.pop)
        end
        a
    end

    def add_factor(factors, factor)
        if factors[factor]
            factors[factor] += 1
        else
            factors[factor] = 1
        end
    end

end                            

include Factors
