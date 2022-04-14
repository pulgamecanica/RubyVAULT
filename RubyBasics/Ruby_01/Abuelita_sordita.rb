def deaf_grandma 
  count = 3
  input = ''
  p a = "Hola estas hablando con tu abuela, y esta un poquito sordita, intentaa hablar con ella y agraga algún texto, si no te escucha intenta gritarle usando !"
  loop do

    input = gets.chomp

    if input.upcase == input && input != "BYE TQM"
      p "NO, NO DESDE 1983"
    elsif input.downcase == input
      p "HUH?! NO TE ESCUCHO, HIJO!" 
    elsif input == "BYE TQM"
          count -= 1
     break if count == 0
   end
 end
end
 p deaf_grandma

