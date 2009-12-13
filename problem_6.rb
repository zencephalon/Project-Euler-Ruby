class Array
  def sum
    inject( nil ) { |sum,x| sum ? sum+x : x }
  end
end

class Main
  puts ((1..100).to_a.sum)**2 - (100*101*201)/6
end
