require 'date'

d = Date.civil(1901, 1, 1)
e = Date.civil(2000, 12, 31)
i = 0

while d < e do
    if d.sunday?
        i += 1
    end
    d = d >> 1
end

puts i
