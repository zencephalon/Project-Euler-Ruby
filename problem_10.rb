class Primes

  attr_accessor :primes

  def initialize
    @primes = [2]
  end

  def next n=1
    n.times do
      i = @primes.last
      while true
        i += 1
        if prime? i
          @primes << i
          break
        end
      end
    end
    return @primes.last
  end

  def prime? num
    for p in @primes
      return false if num % p == 0
      break if p > Math.sqrt(num)
    end
    true
  end
end

class Array
  def sum
    inject( nil ) { |sum,x| sum ? sum+x : x }
  end
end

class Main
  list = Primes.new
  while list.next < 2000000
  end
  puts list.primes[0..-2].sum
end
