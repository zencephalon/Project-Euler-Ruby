def permutable? arr
	for i in (0..arr.length-2)
		return true if arr[i] < arr[i+1]
	end
	return false
end

#breaks if permutation attempted on highest value.
def permute arr
	if permutable? arr
		arr = arr.clone
		if (arr[-1] == arr.min)
			p = permute arr[0..-2]
			for i in (0..p.length-1)
				if (p[i] != arr[i])
					p.insert(i+1,arr[-1])
					break
				end
			end
		else
			index = -2
			while (arr[index] > arr[-1])
				index -= 1
			end
			#If we are jumping at least two, check that middle is fully permutated
			if index <= -4
				if permutable? arr[index+1..-2]
					return arr[0..index].concat(permute arr[index+1..-1])
				end
			end
			
			val = arr[index]
			p = arr.clone
			p[index] = p[-1]
			remaining = arr[index+1..-2] << val
			for i in (1..(index*-1 - 1))
				p[index+i] = remaining.min
				remaining.delete(remaining.min)
			end
		end
		return p
	else
		return arr
	end
end

class Main
	a = [0, 1, 2,3,4,5,6,7,8,9]
	for i in (1..999999)
		a = permute a
	end
	print a
end