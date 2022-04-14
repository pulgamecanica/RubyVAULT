require "sinatra"

get "/" do
  count_vowels("Andre Hernandez Rosado")
end
def count_vowels(name)
my_name = name.downcase
 namecount = my_name.scan(/[aeoui]/).count
  "My name is #{my_name} and it has  #{namecount} vowels"
end
