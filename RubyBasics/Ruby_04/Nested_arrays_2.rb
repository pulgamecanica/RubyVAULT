def logica
  count = 0
  create = Array.new(3) { Array.new(3){[" x ", " o "].sample}}
  create.each do |z|
    z.each do |y| 
      print y
    end
    puts
  end
  a = create[0].count " x "
  b = create[1].count " x "
  c = create[2].count " x "
  count = a + b + c
  if count < 4
    p "↑↑No cumple con la regla↑↑"
    logica
  elsif count > 5
    p "↑↑No cumple con la regla↑↑"
    logica
  else
    p "¡Enhorabuena has creado un gato!"
    create
  end
end
logica
puts
puts "next exercice".upcase
puts

lista = [ "Nombre", "Edad", "Genero", "Grupo", "Calificaciones", ]
table = [ "Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8], ] ,                
["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8], ], 
["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8], ],              
["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8], ],       
["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8], ]
table.each do |x|       
  a = Hash[lista.zip(x)]
  a["Nombre"]
  a["Edad"]
  a["Genero"]
  a["Grupo"]
  a["Calificaciones"]
  array = []
  p  array.push(a)
end
