$num_vals = {0 => -3, 1 => 3, 2 => 3, 3 => 5, 4 => 4, 5 => 4, 6 => 3, 7 => 5, 8 => 5, 9 => 4, 10 => 3, 11 => 6, 12 => 6, 13 => 8, 14 => 8, 15 => 7, 16 => 7, 17 => 9, 18 => 8, 19 => 8, 20 => 6, 30 => 6, 40 => 5, 50 => 5, 60 => 5, 70 => 7, 80 => 6, 90 => 6, 1000 => 11}

def letters(n)
    return $num_vals[n] if $num_vals[n]
    total = 0
    if n >= 100
        total += letters(n / 100) + 10 + letters(n % 100)
    else
        total += letters(n % 10) + letters(n / 10 * 10)
    end
end

def solution
    (1..1000).inject(0) {|s, i| s + letters(i)}
end

puts solution
