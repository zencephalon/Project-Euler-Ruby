class Main
  sum = 0
  n = 0
  File.open('problem_13.txt').each { |line|
    sum += line.to_i
    n += 1
  }

  puts n
  puts sum
  puts sum.to_s[0..9]
end
