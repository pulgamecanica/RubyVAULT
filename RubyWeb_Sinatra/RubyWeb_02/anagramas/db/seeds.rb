# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 
def canonical(word)
  word.split(//).sort.join
end

File.open("words").each.with_index do |word|
  canonical_word=canonical(word.downcase.chomp)
  p Word.create(word: word.chomp, canonical_version:canonical_word)
end

