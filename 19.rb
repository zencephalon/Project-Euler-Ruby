require 'date'

def solution
    i, d = 0, Date.civil(1901, 1, 1)
    while d < Date.civil(2000, 12, 31)
        i += 1 if d.sunday?
        d = d >> 1
    end
    i
end

puts solution
