puts (1..100).inject(1, :*).to_i.to_s.split(/(\d)/).inject(0, :+)
