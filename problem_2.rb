class Fibonacci
  def initialize
    @a, @b = 1, 2
  end
  def next
    temp = @b
    @b += @a
    @a = temp
    return @b
  end
  def next_even
    self.next
    self.next
    self.next
  end
  def current
    @b
  end
end

class Main
  sum = 0
  fib = Fibonacci.new
  while fib.current < 4000000
    sum += fib.current
    fib.next_even
  end
  puts sum
end
