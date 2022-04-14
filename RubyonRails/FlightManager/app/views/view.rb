require 'pp'

class View
	
	def menu
    puts "1) Reservaciones"
    puts "2) Administrador"
    puts "3) Salir"
    gets.chomp
  end

  def admin
    results = []
    puts "Ingrese usuario:"
    results << gets.chomp
    puts "Ingrese contraseña:"
    results << gets.chomp
  end

  def admin_menu
    puts "Bienvenido Administrador"
    puts "--------------------------------------------------"
    puts "1) Muestra todos los vuelos"
    puts "2) Muestra todas las reservaciones"
    puts "3) Crea un nuevo vuelo"
    puts "4) Salir"
    puts
    puts "Selecciona opción:"
    gets.chomp
  end

def index_flight(flight)
  pp flight
  puts "*"*40
  puts "Hay #{flight.count} vuelos disponibles"
  puts
  puts "*"*40
end

def index_booking(bookings)
  pp bookings
  puts "*"*40
  puts "Hay #{bookings.count} reservaciones"
  puts
  puts "*"*40
end
def add_flight
  new_flight_info = []
  puts "Número de vuelo nuevo:"
  new_flight_info << gets.to_i
  puts "Hora de partida del nuevo vuelo:"
  new_flight_info << gets.to_i
  puts "Lugar de partida del nuevo vuelo:"
  new_flight_info << gets.chomp
  puts "Destino de nuevo vuelo:"
  new_flight_info << gets.chomp
  puts "Duración de nuevo vuelo:"
  new_flight_info << gets.chomp
  puts "Costo de vuelo nuevo:"
  new_flight_info << gets.to_i
  puts "Cuantos pasajeros podran abordar el avion"
  new_flight_info << gets.to_i
end
def res_menu
  puts "-"*40
  puts "        ¡¡¡Bienvenido!!!         "    
  puts"-"*40
  puts "1) Encuentra tu boleto de avión"
  puts "2) Salir"
  puts "Selecciona una opción:"
  gets.chomp
end

def find_flight
  flight_information = []
  puts "--------------------------------------------------"
  puts "            ¡¡¡Encuentra tu vuelo!!!"
  puts "--------------------------------------------------"
  puts"From:"
  flight_information << gets.chomp
  puts "To:"
  flight_information << gets.chomp
  puts "Date:"
  flight_information << gets.chomp
  puts "Passengers (1, 2, 3, 4...):"
  flight_information << gets.to_i
end

def select_flight
  puts "Selecciona tu vuelo:"
  gets.to_i
end
def booking(person, flight_cost, flight_id)
  counter_booking = 1
  name = ""
  email= ""
  person.times do
    print "Datos de Persona:"
    puts counter_booking
    puts 
    puts "*"*40
    puts "Ingresa tu nombre :"
    name = gets.chomp
    puts "email:"
    email = gets.chomp
    User.create(name: name, email: email, admin: 0)
    puts "*"*40
    p counter_booking = counter_booking + 1
  end
#Booking.create(num_booking: 19989, total:320, flight_id:5)
@counter_for_booking = 1
  Booking.create(num_booking: @counter_for_booking, total: (person)*(flight_cost), flight_id: flight_id)
  puts "Realizar reservación: SI / NO"
  confirmation = gets.chomp
  
  if confirmation == "SI"
    puts"*"*40
    puts "Se realizo su reservación"
    puts"*"*40
  else
    puts "No se realizo su reservación"
    exit 
  end
 flight_confirm = Flight.find_by(id: flight_id)
  total = flight_confirm.passengers-person
  flight_confirm.update(passengers: total)
  flight_confirm.save 

  leter = Array.new(10){[*"A".."Z", *"0".."9"].sample}.join
  puts "El costo total de su vuelo es #{flight_cost*person}"
  puts "Tu Id de reserva es #{flight_cost-counter_booking}-#{leter}"
  puts "-"*40
  puts 
  puts 
end

end