def solution
    a = []
    File.open("18.txt").readlines.each_with_index do |line, i|
        a[i] = line.split.map {|n| n.to_i}
    end
    (a.size - 2).downto(0) do |i|
        0.upto(a[i].size - 1) do |j|
            a[i][j] += [a[i+1][j], a[i+1][j+1]].max
        end
    end
    a[0][0]
end

puts solution
