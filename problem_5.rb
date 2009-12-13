def lcm list
  if list.length == 1
    return list.first
  end
  a, b = list.pop, list.pop
  list.push((a * b) / gcd(a, b))
  lcm list
end

def gcd a, b
  while b != 0
    t = b
    b = a % b
    a = t
  end
  a
end

class Main
  puts lcm (1..20).to_a
end
