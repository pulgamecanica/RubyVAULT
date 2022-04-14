def factorial(num)
  total = 1
  (1..num).each do |num|
    total *= num   
  end
  total
end

def factorial_reduce(num)
  (1..num).inject(:*) || 1
end
p factorial(13342)
p "nextnum"
p factorial_reduce(1511)
