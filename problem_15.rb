class Main
  #From analysis, determined that nxn paths reduces to Euler's triangle row 2n (row containing "1" is row 0)
  row = [1]
  num = 0
  n = 20
  seek = 2*n
  while num != seek
    nex = []
    num += 1
    for i in (0..num)
      if i == 0 or i == num
        nex[i] = 1
      else
        nex[i] = row[i-1] + row[i]
      end
    end
    row = nex
  end

  #Output the middle element
  puts row[(row.size-1)/2]
end
