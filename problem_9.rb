class Main
  a = b = c = 0
  while a < 1000 do
    a = a + 1
    b = a
    while a+b+c < 1000 do
      b = b + 1
      c = Math.sqrt(a**2 + b**2)
      if (a+b+c-1000).abs < 0.001
        puts (a * b * c).to_i
        break
      end
    end
  end
end
