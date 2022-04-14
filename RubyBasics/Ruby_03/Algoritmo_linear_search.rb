
def linear_search(num, random_numbers)
	p random_numbers.index(num)
end

random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
linear_search(20, random_numbers)
linear_search(29, random_numbers)

def global_linear_search(object, array)
	array.each.select{|i| i == object}
end

arr = "entretenerse".split('')
p global_linear_search("e", arr)
