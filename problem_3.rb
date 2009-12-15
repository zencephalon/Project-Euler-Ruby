def largest_prime_factor num
  a = first_factor num
  if a == :prime
    return num
  else
    return [a, largest_prime_factor(num / a)].max
  end
end

def first_factor num
  for i in (2..Math.sqrt(num).floor)
    return i if num % i == 0
  end
  return :prime
end

class Main
  puts largest_prime_factor 600851475143 
end
