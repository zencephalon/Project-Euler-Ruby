def letters num
  ans = nil
  if num < 20
    ans = case num
          when 1,2,6,10
            3
          when 4,5,9
            4
          when 3,7,8
            5
          when 11, 12
            6
          when 15,16
            7
          when 14,18,19,13
            8
          when 17
            9
          end
  elsif num < 100
    if num % 10 == 0
      ans = case num
            when 50, 60, 40
              5
            when 20,30,80,90
              6
            when 70
              7
            end
    else
      ans = letters(num % 10) + letters(num - num%10)
    end
  elsif num < 1000
    if num % 100 == 0
      ans = 7 + letters(num / 100)
    else
      #Add 3 for the 'and' since the remainder is not "00"
      ans = letters(num%100) + letters(num - num%100) + 3
    end
  elsif num == 1000
    ans = 11
  end
  ans
end

class Main
  sum = 0
  for i in (1..1000) do
    sum += letters(i)
  end
  
  puts sum
end
