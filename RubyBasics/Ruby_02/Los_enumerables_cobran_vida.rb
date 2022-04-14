# bundle exec rspec NAME

# Dado un array de números imprime únicamente los elementos que contienen un indice impar
# Utiliza: Enumerable#each_with_index
def print_odd_indexed_integers(array)
  odd_index = array.select.each_with_index { |_, i| i.odd? }
  puts odd_index
end

# Dado un array de números regresa un array con solo sol numeros impares
# Utiliza: Enumerable#select
def odd_integers(array)
  odd_numbers = array.select.each {|i| i.odd? }
end

# Dado un array y un límite regresa el primer numero que sea menor al límite 
# Utiliza: Enumerable#find
def first_under(array, limit)
  first_num = ""
  array.each.find {|i| i < limit}
end


# Dado un array de strings y regresa un nuevo array donde todos los elementos contengan al final un signo de admiración. 
# Utiliza: Enumerable#map
def add_bang(array)
  array.map { |n| "#{n}!" }
end

# Dado un array de números calcula la suma de todos sus elementos. 
# Utiliza: Enumerable#reduce
# Repite el ejercicio con Enumerable#inject
def sum(array)
  array.reduce(:+)
  array.inject { |sum, n| sum + n }
end


# Dado un array de string reorganizalo en grupos de tres y ordénalos alfabéticamente.  
# Utiliza: Enumerable#each_slice
def sorted_triples(array)
  saver = []
  order = array.each_slice(3)
  order.each {|x| saver << x.sort}
  saver
end

# Driver code... no modifiques nada de este código 
print_odd_indexed_integers([2, 4, 6, 8, 10, 12])
# => 4
# => 8  
# => 12

puts odd_integers([3, 4, 7, 9, 10, 16]) == [3, 7, 9]

puts first_under([13, 21, 7, 0, 11, 106], 10) == 7

puts add_bang(["hi", "mom"]) == ["hi!", "mom!"]

puts sum([1, 1, 2, 3, 5]) == 12

words = %w(De esta simple manera se puede reorganizar una oración)  
p sorted_triples(words) == [["De", "esta", "simple"], ["manera", "puede", "se"], ["oración", "reorganizar", "una"]]    

p "RSpec Tests"

RSpec.describe "Day 2" do
	describe ".odd_integers" do
		let(:input) {[2, 4, 6, 8, 10, 12, 13, 15]}
		subject { odd_integers(input) }
		it { is_expected.to eq [13, 15]}
	end
end
