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

def fib_rec(n)
	if n < 2
		n
	else
		fib_rec(n-1) + fib_rec(n-2)
	end
end

def fibs(n, result = [])
	n.times do
		result << fib_rec(n)
		n -= 1
	end
	result.reverse
end
p fibs(8)

# def fibs_rec(n)
#   return [0, 1] if n < 2

#   arr = fibs_rec(n - 1)
#   arr << (arr[-1] + arr[-2])
# end
