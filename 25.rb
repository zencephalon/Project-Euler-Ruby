# F_n = phi^n / sqrt(5)
# F_n > 10^999
# phi^n / sqrt(5) > 10^999
# n * log(phi) - log(5) / 2 > 999
# n * log(phi) > 999 + log(5) / 2
# n > (999 + log(5) / 2) / log(phi)

def solution
    phi = (1 + Math.sqrt(5))/2
    (999 + Math.log10(5) / 2) / Math.log10(phi)
end

puts solution
