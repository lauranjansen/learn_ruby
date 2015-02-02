def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(num_array)
	sum = 0
	num_array.each { |num| sum += num }
	sum
end

def multiply(mult_array)
	multiple = 1
	mult_array.each { |num| multiple = multiple * num }
	multiple
end

def factorial(num)
	fact = 1
	for step in 1..num
		fact = fact * step
	end
	fact
end