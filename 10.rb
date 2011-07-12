load "primes.rb"

def solution
    Primes.take_while {|n| n < 2000000}.inject(:+)
end

puts solution
