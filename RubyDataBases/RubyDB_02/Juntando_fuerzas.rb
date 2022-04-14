require 'sqlite3'

class Chef
#Iniciar tu metodo
  def initialize(first_name, last_name, birthday, email, phone)
    #Crear variables de instancias a tus argumentos, asi las podras llamar en tu metodo.
    @first_name = first_name
    @last_name = last_name
    @birthday = birthday
    @email = email
    @phone = phone
   #Indicar como se ejecutara el codigo en SQL, es el equivalente de las variables de instancia, Values, asi le das un valor a cada argumento.
    Chef.db.execute("
      INSERT INTO chefs
        (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
        ('#{@first_name}', '#{@last_name}', '#{@birthday}', '#{@email}', '#{@phone}', DATETIME('now'), DATETIME('now'))
    ")
  end
#Terminar el metodo.
  #Este metodo es un metodo de clase y  ejecuta un codigo de base de datos pero transformado en ruby
  def self.all
    #Leer todos los chef disponibles
    Chef.db.execute("SELECT * FROM chefs;")
  end
  #Este metodo es un metodo de clase y  ejecuta un codigo de base de datos pero transformado en ruby
  def self.where(field,value)
    #Seleccionar un valor especifico con un filtro
    Chef.db.execute("SELECT * FROM chefs WHERE #{field}= ?", value)
  end
  #Este metodo es un metodo de clase y  ejecuta un codigo de base de datos pero transformado en ruby
  def self.find(value)
  #Encontrar a un chef con su id
    Chef.db.execute("SELECT * FROM chefs WHERE id = ?", value).first
  end
    #Este metodo es un metodo de clase y  ejecuta un codigo de base de datos pero transformado en ruby
  def self.delete(value)
    #Borrar a un che con su id
    Chef.db.execute ("DELETE FROM chefs WHERE id = #{value}")
  end
  #Este metodo es un metodo de clase y  ejecuta un codigo de base de datos pero transformado en ruby
  def self.create_table
    #Crear una tabla  y validar los datos que obtengas
    Chef.db.execute(
      <<-SQL
        CREATE TABLE chefs (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          birthday DATE NOT NULL,
          email VARCHAR(64) NOT NULL,
          phone VARCHAR(64) NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end
  #Este metodo es un metodo de clase y  ejecuta un codigo de base de datos pero transformado en ruby
  def self.seed
  #Aqui defines los valores que le daras a la tabla
    Chef.db.execute(
      #En cada "Chef" le indicas donde hacer los cambios
      <<-SQL
        INSERT INTO chefs
          (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
          ('Ferran', 'Adriá', '1985-02-09', 'ferran.adria@elbulli.com', '42381093238', DATETIME('now'), DATETIME('now')),
          ('López', 'Diana', '1986-10-06', 'ferran.adria@lopez.com', '42381093238', DATETIME('now'), DATETIME('now')),
          ('García', 'Rafael', '1992-10-15', 'ferran.adria@garcia.com', '42381093238', DATETIME('now'), DATETIME('now')),
          ('Pundt', 'Juma', '1991-06-06', 'ferran.adria@pundt.com', '42381093238', DATETIME('now'), DATETIME('now'));
        -- Añade aquí más registros
      SQL
    )
  end

  private
#Crear una base de datos si no existe 
  def self.db
    @@db ||= SQLite3::Database.new("chefs.db")
  end

end

#Chef::create_table
#Chef::seed
puts Chef::all
puts Chef::find(1)
