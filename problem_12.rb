require 'Prime.rb'

class Triangle
  attr_accessor :nums

  def initialize
    @nums = [1]
  end

  def next
    @nums << @nums.last + @nums.size + 1
    @nums.last
  end
end

#Determines the number of factors in a positive integer
#Known to be reliable, so used to test the fast factors in Prime
#Left here for posterity
def factors num
  if num != 1
    #Start with 1 and num as the first factors
    c = 2
    2.upto(num/2) { |f|
      if num % f == 0
        c += 1
      end
    }
  else
    c = 1
  end

  c
end

class Main
  tri = Triangle.new
  max = 0
  while Prime.factors(tri.next) < 500 do
  end

  puts tri.nums.last
end
