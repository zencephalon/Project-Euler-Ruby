#Runtime too long
def sum_of_two num, list
	list.each {|i| return true if list.include?(num-i)}
	return false
end

def factors num
	fact = [1]
	for i in (2..Math.sqrt(num).floor)
		if num % i == 0
			fact << i
			fact << (num/i) if (num/i) != i
		end
	end
	return fact
end

def sum_of_factors num
	return (factors num).inject(0){|sum, item| sum + item}
end

def abundant? num
	return sum_of_factors(num) > num
end

class Main
	ab = []
	sum = 0
	for i in (1..28123)
		if (!sum_of_two(i, ab))
			sum += i
		end
		
		if (abundant? i)
			ab << i
		end
		puts (i/28123.0)*100
	end
	puts sum
end

