puts (1..100).inject(1) {|prod, i| prod * i}.to_i.to_s.split(/(\d)/).inject(0) {|sum, i| sum + i.to_i}
