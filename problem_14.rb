class Main
  answers = [0]
  for i in (1..1000000-1)
    term = i
    length = 1
    solved = 0
    while term != 1 && solved == 0
      if term < i
        length += answers[term] - 1
        solved = 1
      else
        if term % 2 == 0
          term /= 2
        else
          term = 3*term + 1
        end
        length += 1
      end
    end
    answers << length
  end

  puts answers.each_with_index.max[1]
end
