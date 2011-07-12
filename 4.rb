def solution
    a = []
    999.downto 900 do |i|
        999.downto 900 do |j|
            m = i * j
            a << m if m.to_s == m.to_s.reverse
        end
    end
    a.max
end

puts solution
