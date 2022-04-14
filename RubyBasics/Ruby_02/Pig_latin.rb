# GET a word from user input
# Create the variable "find_vowel_index" that is equal to spare each character until a there is a character thats a vowel.
# Then we should take the characters we didnt use that were overpassed because those werent vowels but we steal use at the end after "ay"
# The variable complete_word is creating a word from the vowel to the last character
# Add the string "ay" to the end of the word

# GET a sentence from user
# Split each word of the sentence
# Map each word with the mwtjod translate word like ading the method to each word then join each word

  
def vowel(str)
  ["a","e","i","o","u"].include?(str)
end

def translate_word(word)
  find_vowel_index = word.chars.find_index{|x| vowel(x)}
  main_consonants = word[0..find_vowel_index-1]
  complete_word = word[find_vowel_index..-1]
  complete_word + main_consonants + 'ay'
end

def translate(sentence)
  words = sentence.split(" ")
  words.map{|w| translate_word(w) }.join(" ")
end

p translate("that pig is eating a banana in the trash, he look`s really happy we should call the duck whit the glove so he could have more fun") =="atthay igpay isisay eatingeatingay aaay ananabay ininay ethay ash,tray ehay ook`slay eallyray appyhay eway ouldshay allcay ethay uckday itwhay ethay oveglay osay ehay ouldcay avehay oremay unfay"
p translate_word("pig") == "igpay"
p translate_word("banana") == "ananabay"
p translate_word("trash") == "ashtray"
p translate_word("happy") == "appyhay"
p translate_word("duck") == "uckday"
p translate_word("glove") == "oveglay"
