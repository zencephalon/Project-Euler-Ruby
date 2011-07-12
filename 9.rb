# Pythagorean triples are of the form a = m^2 - n^2, b = 2mn, c = m^2 + n^2.
# This is Euclid's formula.
#
# Since there exists only one triplet a + b + c = 1000 we can simply solve for it.
# (m^2 - n^2) + 2mn + (m^2 + n^2) = 1000
# 2m^2 + 2mn = 1000
# 2m(m + n) = 1000
# m(m + n) = 500
# One solution to this is m = 20, n = 5
# This gives a = 375, b = 200, c = 425.
# a * b * c = 31875000

def solution
    31875000
end

puts solution
