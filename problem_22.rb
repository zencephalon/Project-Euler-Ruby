puts open("names.txt").read.scan(/\w+/).sort.each_with_index.inject(0) {|sum, ni| sum + ni[1].succ * ni[0].each_byte.inject(0) {|i, s| s + i - 64}}

