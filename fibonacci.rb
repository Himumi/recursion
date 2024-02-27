# Fibonacci

# def fibs(n, arr = [])
# 	first_num, second_num = 0, 1
# 	n.times do
# 		first_num, second_num = second_num, first_num + second_num
# 		arr << first_num
# 	end
# 	arr
# end

# p fibs(8)

def fibs_rec(n)
	return n if n < 2
	fibs_rec(n-1) + fibs_rec(n-2)
end

def fibs(n, result = [])
	n.times do
		result << fibs_rec(n)
		n -= 1
	end
	result.reverse
end
p fibs(8)
