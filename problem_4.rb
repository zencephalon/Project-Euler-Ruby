def find_palindrome
  a = []
  999.downto 900 do |i|
    999.downto 900 do |j|
      a << i*j if (i*j).to_s == (i*j).to_s.reverse
    end
  end
  return a.max
end

class Main
  puts find_palindrome
end
