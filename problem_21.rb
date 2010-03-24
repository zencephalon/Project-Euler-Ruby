# Warning, inefficient as hell.
def d n
    (1...n).select {|i| n % i == 0}.inject(0, :+)
end
puts (1...10000).select {|n, t| t = d n; t != n and d(t) == n}.inject(0, :+)
