module Prime
    class PrimeNumbers < Array
        def initialize
            super(eval(File.open("primes").read))
            @size = size
        end

        def [](n)
            return super(n) if super(n)
            self.[](n)
        end

        def nth(n)
            self.[](n - 1)
        end

        def sieve(n)
            s = (0..n).to_a
            s[0] = s[1] = nil
            s.each do |p|
                next unless p
                break if p * p > n
                (p*p).step(n, p) {|m| s[m] = nil}
            end
            s.compact
        end

        def prime?(n)
            return true if member?(n)
            return false if n < last
            prime?(n)
        end

        def save
            if @size < size
                File.open("primes", "w") do |f|
                    f.write(self.to_s)
                end
                @size = size
            end
        end
    end

    Primes = PrimeNumbers.new
end

include Prime
