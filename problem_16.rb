class Main
  num = 2**1000
  str = num.to_s
  sum = 0
  for i in (0..str.size-1) do
      c = str[i]
      sum += c.to_i
  end
  puts sum
end
