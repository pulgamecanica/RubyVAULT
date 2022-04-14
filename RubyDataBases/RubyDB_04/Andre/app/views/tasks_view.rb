class UsersView
  # Recuerda que la única responsabilidad de la vista es desplegar data al usuario
def initialize
end
  def menu
    puts "-"*(40)
    puts "Bienvenido a Maraton"
    puts "-"*(40)
    puts "1)Login"
    puts "2)Signup"
    puts "3)Scores"
    gets.to_i
  end

  def login
    user_information = []
    puts "-"*(40)
    puts "Login"
    puts "-"*(40)
    puts "Email:"
    user_information << gets.chomp
    puts "Password:"
    user_information << gets.chomp
  end

  def signup
  user_information = []
  puts "Create your username"
  user_information << gets.chomp
  puts "Introduce your password"
  user_information << gets.chomp
  puts "Introduce your email"
  user_information << gets.chomp
  puts "Introduce your name"
  user_information << gets.chomp
  user_information
  end
 
def deck_menu
    puts "-"*(40)
    puts "We will give you a question and you`ll try to get it rigth. Ready? Go!!!"
    puts "-"*(40)
    puts "Choose a Deck"
    puts "1) Science"
    puts "2) Math"
    puts "3) History"
    deck = gets.to_i
    puts
    puts
    puts"5!!!!!"
    sleep(3)
    puts"4!!!!"    
    sleep(3)
    puts"3!!!"
    sleep(2)
    puts"2!!"
    sleep(1)
    puts"1!"
    sleep(1)
    puts"Good luck :)!!!!!"
    deck
  end
 def scores
  puts "Introduce the number of the game you want to see his status"
  gets.to_i
  end
end



















