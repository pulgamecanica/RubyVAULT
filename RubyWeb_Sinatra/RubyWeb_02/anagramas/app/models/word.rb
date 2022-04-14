class Word < ActiveRecord::Base

  def self.to_canonical(word)
     word.split(//).sort.join
  end

  def self.canonical(input)
    anagram = []
    canonical_input = to_canonical(input)
    a = Word.all.where(canonical_version: canonical_input)
    counter = a.length
    counter.times do |i| 
    anagram << a[i].word
    end
    anagram
  end
end
