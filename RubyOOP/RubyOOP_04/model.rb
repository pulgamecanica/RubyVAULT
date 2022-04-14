require 'csv' #Requerir csv para poder leer el csv.

class Task #Crear la clase Task.
  attr_reader :text  #Accessor reader para poder leer el text pero no cambiarlo.
  attr_accessor :status #Accrssor para poder leer el status y cambiarlo.
  def initialize(text, status = false) #Inizializar la clase Task.
    @text = text  #Crear la variable text para poder utilizarla en la clase.
    @status = status  #Crear la variable status para poder llamarla en la clase.
  end #Terminar el Initialize.
end #Terminar la clase Task.

class List  #Crear la clase List.
  attr_accessor :tasks  #Accesor para poder leer y cambiar los tasks.

  def initialize #Initialize la clase List.
    @tasks = read_csv  #Crear la vatiable task para poder leer el csv.
  end #Terminar Initialize.
 
  def read_csv  #Crear el metodo read_csv que nos permitira leer los tasks.
    tasks = []  #Crear una variable con un array vacio.
    CSV.foreach("todo.csv") do |row|  #Acceder al CSV "todo.csv" y a cada uno de los valores.
      tasks << Task.new(row[1], row[0] == 'true') #Anexar el texto de CSV a el array vacio task, y asi mismo agregar su status (True o False).
    end  #Termminar el do en el CSV.
    tasks  #Regresar array ya con los tasks.
  end  #Terminar el metodo read_csv.
  def save_csv  #Crear el metodo save_csv.
    CSV.open('todo.csv', 'wb') do |csv|  #Abrir el CSV y acceder a el.
      @tasks.each do |t| #Leer el CSV y acceder a el texto.
        csv << [t.status,t.text]  # Guardar el texto y el status de cada tarea.
      end  #Terminar el do de el CSV.
    end  #Terminar el do de @tasks.
  end  #Terminar el metodo save_csv.
  def complete_task(id)  #Crear el metodo complete_task que recube un argumento.
    task = @tasks[id]  #Crear una variable que accede a una tarea dependiendo de el id que define el usuario.
    task.status = true  #Cambiar el valor del status a true de esa tarea.
    save_csv  #Guardar el cambio con el metodo save_csv.
    task  #Regresar el task que completamos.
  end  #Terminar el metodo complete_task.
  def delete_task(id)  #Crear el metodo delete_task que recibe un argumento.
    @tasks.delete_at(id) #Borrar la tarea desde el csv dependiendo de su id.
  end  #Terminar el metodo delete_task.
  def uncomplete_task(id)  #Crear el metodo uncomplete task que recibe un argumento.
  task = @tasks[id]  #Crear una variable que accede a una tarea dependiendo de el id que define el usuario.
    task.status = false  #Cambiar el valor del status a false de esa tarea.
    save_csv  #Guardar el cambio con el metodo save_csv.
    task  #Regresar el task que completamos.
  end  #Terminar el metodo uncomplete_task
end #Terminar un la clase List
