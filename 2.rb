load "util.rb"

def solution
    s, i = 0, 2
    n = Fib.nth(i)
    while n < 4000000
        s += n
        n = Fib.nth(i += 3)
    end
    Fib.save
    s
end

puts solution
