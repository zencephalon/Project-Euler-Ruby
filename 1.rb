def solution
    (1..999).reduce(0) {|s, n| s + ((n % 3 == 0 || n % 5 == 0) ? n : 0)}
end

puts solution
