require 'pp'

class Controller 

  def initialize
    @view = View.new
    option = @view.menu
    bienvenida(option)
  end

  def bienvenida(option)
    case option
    when "1" then reservaciones(@view.res_menu)
    when "2" then administrador(@view.admin)
    when "3" then p "Nos vemos :)" 
  exit
    end
  end

  def reservaciones(option)
    case option
    when "1" then find_flight
    when "2" then p "Nos vemos :)"
      exit
    end
  end

def find_flight
  option = @view.find_flight
  flights = Flight.where(from: option[0], to: option[1], date:option[2])
  number_of_flights = flights.count
  if number_of_flights == 0
  puts  "No existe ese vuelo"
  find_flight
  else
  counter = 0
  puts "Hay #{number_of_flights} vuelos disponibles"
  number_of_flights.times do 
    puts "-"*30
    print "#{counter+1})"
  pp flights[counter]
  puts "-"*30
  counter =+1
end
end
flight_number = @view.select_flight
flight_id = flights[flight_number-1].id
flight_cost = flights[flight_number-1].cost
num_of_passengers = flights[flight_number-1].passengers-(option[3])

if num_of_passengers <= 0
  puts "Ya no hay lugares para ese vuelo, lo sentimos"
else
  print "Número de Vuelo Seleccionado:"
  puts flights[flight_number-1].num_flight
  puts "-"*40
  print "Date:"
  puts flights[flight_number-1].date
  print "From:"
  puts flights[flight_number-1].from
  print "To:"
  puts flights[flight_number-1].to
  puts "-"*40
  booking_user = @view.booking(option[3], flight_cost, flight_id) #option[3].class = fixnum
end
  option_1 = @view.menu
  bienvenida(option_1)
end

def administrador(admin_info)
  if User.where(name: admin_info[0], password: admin_info[1], admin: true).exists?
    admin_menu
  else
    p "Acceso denegado"
    administrador(@view.admin)
  end
end

def admin_menu
  option = @view.admin_menu
  case option
  when "1" then index_flight
  when "2" then index_booking
  when "3" then add_flight
  when "4" then p "Nos vemos :)"
    exit
  end
end


def add_flight
  new_flight_info = @view.add_flight
  Flight.create(num_flight: new_flight_info[0], date: Time.now, depart: new_flight_info[1], from: new_flight_info[2], to: new_flight_info[3], duration: new_flight_info[4], cost: new_flight_info[5], passengers: new_flight_info[6])
  puts "*"*40
  puts "Vuelo añadido con éxito!"
  puts "*"*40
  admin_menu
end

def index_flight
  flight = Flight.all
  @view.index_flight(flight)    
  admin_menu   
end

def index_booking
  bookings = Booking.all
  @view.index_booking(bookings)
  admin_menu
end
end