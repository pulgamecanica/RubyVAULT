class TasksView
  # Recuerda que la única responsabilidad de la viesplegar dat de cosas a al usuario
def menu #Crear el metodo menu que nos da las opcionesque podemos hacer.
    puts "welcome user" #Imprimir el string.
    puts "Type 1 show all task"  #Imprimir el string.     
    puts "Type 2 to add new task"  #Imprimir el string..
    puts "Type 3 to delete"  #Imprimir el string.
    puts "Type 4 to complete"  #Imprimir el string
    puts "Type 5 to exit"  #Imprimir el string.
    gets.to_i  #Recibir una orde de el usuario (deberia se un número).
  end #Terminar el metodo menu.

  def index(tasks)
   tasks.each do |t|
    status = t.status == true ? 'X' : ''   
    puts "#{t.id}.- [#{status}] #{t.task_name} #{t.name} #{t.created_at} #{t.updated_at}" 
  end
end

def create
  user = []
  puts "Add your task"
  user << gets.chomp
  puts "Add your name"
  user << gets.chomp
  user
end

def delete
  puts "Which task would you like to delete"
  gets.chomp
end

def update
  puts "Which task would you like to complete"
  gets.chomp
end
end