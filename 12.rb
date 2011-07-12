load "factors.rb"

class Triangle
    def initialize
        @value = 0
        @nth = 0
    end

    def next
        @nth += 1
        @value += @nth
    end
end

def solution
    t = Triangle.new
    v = t.next
    until number_of_divisors(v) > 500
        v = t.next
    end
    v
end

puts solution
