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

def titleize(input)
	words = input.split(" ")
	output = words[0].capitalize
	if words.count > 1
		for i in 1..(words.count - 1)
			case words[i]
			when "and", "the", "over", "under", "at"
				output = output + " " + words[i]
			else
				output = output + " " + words[i].capitalize
			end
		end
	end
	output
end