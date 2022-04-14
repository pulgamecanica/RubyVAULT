#declaracion arreglos students, con varios estudiantes y sus calificaciones.
students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]
#definicion el metodo best students, argumento students.
def best_students(students)
  best_students = []
  student, grade = 0, 0
   #Declaracion de un loop que permite acceder a "student"
   while grade < students.length
    #Decidimos si el alumno entra a best students
    current_student = students[grade][student]
    #Si la calificacion es 10 Entonces el alumno entra en best students
    if current_student[1] == 10
      #Metemos el nombre dque le corresponde a la calificacion
      best_students.push(current_student[0])
      #Terminamos la condicion
    end
    #Si la calificacion no es mejor que la de los demas Entonces evaluar a otro
    if student == (students[grade].length - 1)
      student = 0
      grade += 1
    #Evaluar al otro hasta que se cumpla la condicion "if"
    else
      #Indicacion de pasar al siguiente
      student += 1
    end
  end
  #Mostrar como resultado el array en el cual metimos a los alumnos con mejor desempeño
  best_students
end 
p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]