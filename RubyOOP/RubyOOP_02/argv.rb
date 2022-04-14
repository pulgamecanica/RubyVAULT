def vowel(str)
	["a","e","i","o","u"].include?(str)
end

def translate_word(words)
	words.each do |char|
		find_vowel_index = char.chars.find_index{|x| vowel(x)}
		if not find_vowel_index.nil?
			main_consonants = char[0..find_vowel_index - 1]
			complete_word = char[find_vowel_index..-1]
			complete_word + main_consonants + 'ay'
		end
	end
end

def translate(sentence)
	words = sentence.split(" ")
	words.map{|w| translate_word(w) }.join(" ")
end

if not (ARGV.empty?)
	p translate_word(ARGV)
end


