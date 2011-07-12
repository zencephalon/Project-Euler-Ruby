def solution
    File.open("13.txt").readlines.inject(0) {|s, v| s += v.to_i }.to_s[0..9]
end

puts solution
