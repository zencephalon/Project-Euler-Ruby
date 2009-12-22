class Main
  file = File.open('problem_67.txt');
  cost = file.to_a
  length = cost.size
  distance = []
  (length-1).downto(0) { |i|
    #Get the current row out
    row = Array.new
    for j in 0..i
      row[j] = cost[i][j*3..j*3+1].to_i
    end

    #If this is the bottom row, then the distance is just the cost of this row
    if i == length-1
      distance = row
    #Otherwise, each is the maximum of the current location cost + the max of the two routes to here
    else
      temp = []
      for j in 0..i
        temp[j] = row[j] + [distance[j], distance[j+1]].max
      end
      distance = temp
    end
  }

  puts distance[0]
end
