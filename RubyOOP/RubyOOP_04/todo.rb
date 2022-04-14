#Requerir los archivos que llamaremos para poder ocuparlos.
require_relative 'model.rb'
require_relative 'view.rb'

class ToDo#Crear la clase ToDo
  def initialize  #Inizializar la clase ToDo.
    #Definir las variables de instancia de ToDo.
    @view = View.new    #Crear una view nueva, para poder regresar al menú y no tener que volver  entrar.
    @list = List.new    #Crear una lista nueva para poder acceder a la lista que creamos y asimismo a las ordenes.
    options(1)    #Definir una variable como si fuera contador y que pueda tomar distintos valores, inicialmente es uno para mostrar la lista de cosas.
  end    #Terminar el metodo Initialize.

def options(option) #Crear el metodo options.
    case option   #Abrir un case para poder recibir una orden de el usuario y ejecutarla dependiendo de lo que quiere.
    when 1    #Definir que hacer cuando el usuario escribe "1".
      tasks = @list.tasks      #Crear una variable que muestre todos los "tasks", creando una nueva view y metiendo todos los tasks, no podemos mostrarlo directo, siempre debemos...
                               #...crear una nueva view porque si le añadimos nuevos tasks no los mostraria, solo mostraria los tasks de el inicio.
      @view.index(tasks)      #Crear una nueva vista con los valores que tenga y con los que agregamos o borramos y darle el formato que "index" define.
    when 2    #Definir que hacer cuando el usuario escribe "2".
      text = @view.new_task      #Crear una variable que cree una nueva vista y llamar al metodo new_task.
      task = Task.new(text)      #Crear una variable que cree una Task nueva y leer la variable text, que llama a el metodo new_task (sólo regresará lo último del metodo).
      @list.tasks << task      #Crear una lista nueva, con las ordenes que teníamos y juntando nuestra nueva task.
      @list.save_csv      #Guardar los cambios de nuestra nueva task.
      @view.created_task(task)      #Crear una vista nueva llamando al metodo created_task y darle el agrgumento de task que es la task que acabamos de crear.
    when 3   #Definir que hacer cuando el usuario escribe "3".
      id = @view.delete_task      #Crear una variable que crea una vista nueva y llama a el metodo delete_task.
      @list.delete_task(id)      #Crear una lista nueva llamando al metodo delete_task (no es el mismo que el de arriba, uno le pertenece a View y el otro a List) que reciba el número (id).
      @list.save_csv      #Crear una lista nueva (con los valores que tenia) y llamar al metodo save_csv.
    when 4   #Definir que hacer cuando el usuario escribe "4".
      id = @view.complete_task      #Crear un una variable que llama al metodo complete_task.
      task = @list.complete_task(id)      #Crear una variable que llame al metod complete_task y recibe la variable id como argumento.
      @view.completed_task(task)      #Crear una vista nueva llamando al metodo completed_task.
    when 5   #Definir que hacer cuando el usuario escribe "5".
      id = @view.uncomplete_task      #      #Crear una variable que cree una vista nueva llamando al metodo uncomplete_task.
      task = @list.uncomplete_task(id)      #Crear una variable que cree una lista nueva llamando a el metodo uncomplete_task quereciba el id que recibio como argumento.
      @view.uncompleted_task(task)      #Crear una vista nueva lamando a el metodo uncompleted_task.
    when 6   #Definir que hacer cuando el usuario escribe "6"
      puts "Thank you see you later :)" #Imprimir el string.
      exit #salir de el programa
    else   #Definir que hacer cuando el usuario no escribe bien.
      puts "Nothing to do here"  #Imprimir el string.
    end #Terminar el case option.
    option = @view.menu  #Crear una variable qiue cree una vista nueva que llama al metodo menu.
    options(option) #Regresar siempre que acabemos a una orden para ejecutar otra orden.
end #Terminar el metodo options.
end #Terminar la clase ToDo.
todo = ToDo.new #Crear un ToDo nuevo.

