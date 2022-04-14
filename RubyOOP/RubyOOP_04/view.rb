class View #Crear la clase View.  
  def menu #Crear el metodo menu que nos da las opciones de cosas que podemos hacer.
    puts "welcome user" #Imprimir el string.
    puts "Type 1 show all task"  #Imprimir el string.     
    puts "Type 2 to add new task"  #Imprimir el string.
    puts "Type 3 to delete"  #Imprimir el string.
    puts "Type 4 to complete"  #Imprimir el string.
    puts "Type 5 to uncomplete"  #Imprimir el string.
    puts "Type 6 to exit"  #Imprimir el string.
    gets.to_i  #Recibir una orde de el usuario (deberia se un número).
  end #Terminar el metodo menu.
  def index(tasks) #Crear el metodo index que recibe un argumento, este metodo nos mostrará todos los tasks.
    tasks.each_with_index do |t,i| #Crear un indice para cada orden y poder tomar cada valor e indice.
      status = t.status ? 'X' : '' #Definir que hacer si status = true ó status = false.
      puts "#{i}.- [#{status}] #{t.text}"  #Darle un formato de como se imprimiran los tasks.
    end  #Terminar each with index.
  end #Terminar el metodo index.
  def new_task  #Crear un metodo que permitira crear nuevos tasks.
    puts "Add your task"  #Imprimir el string.
    gets.chomp  #Recibir una orden de el usuario para saber que orden agregaremos.
  end  #Terminar el metodo new_task.
  def created_task(task)  #Crear un metodo que recibe un argumento y nos imprimira la nueva task.
    puts "Created Task '#{task.text}'"  #Imprimir el string con la task que agrego el usuario.
  end #Terminar el metodo created_task.
  def delete_task   #Crear el metodo delete_task.
    puts "Which id do you want to delete" #Imprimir el string.
    gets.to_i #Recibir una orden de el usuario (deberia ser un número).
  end #Terminar el metodo delete_task.
  def complete_task  #Crear el metodo complete_task
    puts "Which id do you want to complete" #Imprimir el string
    gets.to_i  #Recibir una orden de el usuario (deberia ser un número).
  end  #Terminar el metodo coplete task.
  def completed_task(task)  #Crear el metodo completed_task
    puts "Task '#{task.text}' is completed" #Imprimir el string con la task que completamos.
  end  #Terminar el metodo completed_task.
  def uncomplete_task  #Crear el metodo uncomplete_task.
    puts "Which id do you want to uncomplete"  #Imprimir el string.
    gets.to_i  #Recibir una orden de el usuario (deberia ser un número).
  end  # Terminar el metodo uncomplete_task.
  def uncompleted_task(task) #Crear el metodo uncompleted_task.
    puts "Task '#{task.text}' is uncompleted"  #imprimir el string con la task que descompletamos.
  end  #Terminar el metodo uncompleted_task.
end  #Teminar ela clase View.
