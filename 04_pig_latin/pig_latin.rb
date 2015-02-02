def translate(input)
	words = input.split(" ")
	new_words = words.map { |word| translate_word(word) }
	new_words.join(" ")
end

def translate_word(input)
	vowels = /[aeiou]/
	qu = /(qu)/
	caps = /[A-Z]/
	if input.chr =~ vowels 										# if the first character is a vowel
		return input + "ay"											# just retun the string + "ay"
	end
	vowels = /[aeiou]/
	capped = !!(input.chr =~ caps)
	word = input.chars
	if qu_index = (input =~ qu) then
		if qu_index < 2
			vowel_index = qu_index + 2
		else
			vowel_index = (input =~ vowels).to_i
		end
	else
		vowel_index = (input =~ vowels).to_i
	end
	output = word.rotate(vowel_index).join + "ay"
	if capped
		output.capitalize!
	end
	output
end