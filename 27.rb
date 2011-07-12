# If p(x) is a prime generating function for 0 < x < n, then so is p(x - k) for 0 < k < n.
# Notice that n^2 - 79n + 1601 = (n - 40)^2 + (n - 40) + 41, which is of the same form as
# n^2 + n + 41, the formula first introduced. We just have to find the largest k so that 
# b is less than 1000.
#
# (x-k)^2 + (x-k) + 41 = x^2 - 2xk + k^2 + x - k + 41 = x^2 - (2k - 1)x + k^2 - k + 41.
# b = k^2 - k + 41, b < 1000
# k = 31
#
# Our formula is n^2 - 61n + 971 

def solution
    971 * (-61)
end

puts solution
