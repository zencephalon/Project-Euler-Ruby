class Fib
    @@f = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352]
    @@size = @@f.size
    def self.nth(n)
        @@f[n] ||= nth(n-1) + nth(n-2)
    end
    def self.save
        if @@size < @@f.size
            lines = []
            File.open(__FILE__, "r") do |f|
                lines = f.readlines
            end
            File.open(__FILE__, "w") do |f|
                lines[1] = "    @@f = " + @@f.to_s + "\n"
                f.write(lines.join)
            end
        end
    end
end
