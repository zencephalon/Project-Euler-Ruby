def solution
    (1..100).inject(:*).to_s.split('').inject(0) {|s, i| s + i.to_i}
end

puts solution
