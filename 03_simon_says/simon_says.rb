def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(input, num = 2)
	output = input
	for i in 2..num
		output = output + " " + input
	end
	output
end

def start_of_word(input, num)
	input[0,num]
end

def first_word(input)
	input.split(" ")[0]
end