# Every path is 40 segments long, of which 20 segments must be up-to-down and 20 must be left-to-right.
# The number of paths is the number of ways to pick 20 paths to be up-to-down.
# 40 choose 20 = fact(40)/(fact(20)*fact(20))

def solution
    (1..40).inject(:*) / (1..20).inject(:*)**2
end

puts solution
