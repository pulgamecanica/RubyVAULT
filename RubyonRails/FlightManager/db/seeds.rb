require 'faker'

flight_1 = Flight.create(num_flight: 1654, date:Time.now, depart: 06-11-2017, from:'Caracas', to:'San Luis Potosí', duration:'2:30:00', cost:1500, passengers:180)
flight_2 = Flight.create(num_flight: 7854, date:Time.now, depart: 12-03-2017, from:'Mexico City', to:'Frankfür', duration:'6:30:00', cost:15000, passengers:180)
flight_3 = Flight.create(num_flight: 6546, date:Time.now, depart: 07-10-2017, from:'Chihuahua', to:'Monterrey', duration:'1:30:00', cost:2500, passengers:200)
flight_4 = Flight.create(num_flight: 7644, date:Time.now, depart: 03-02-2017, from:'Austin', to:'Sinaloa', duration:'3:30:00', cost:3500, passengers:132)
flight_5 = Flight.create(num_flight: 4553, date:Time.now, depart: 11-10-2017, from:'Guadalajara', to:'Michoacan', duration:'1:50:00', cost:1300, passengers:100)
flight_6 = Flight.create(num_flight: 1022, date:Time.now, depart: 11-10-2017, from: "Mexico City", to: "Lisboa", duration: "2:30 hors", cost: 3000, passengers: 102)

user_1 = User.create(name: Faker::Name.name, email:Faker::Internet.email, admin: 0)
user_2 = User.create(name: Faker::Name.name, email:Faker::Internet.email, admin: 0)
user_3 = User.create(name: Faker::Games::Zelda.character, email:Faker::Internet.email, admin: 0)
user_4 = User.create(name: Faker::Name.name, email:Faker::Internet.email, admin: 0)
user_5 = User.create(name: Faker::Games::Zelda.character, email:Faker::Internet.email, password: "123", admin: 1)
user_6 = User.create(name: Faker::Name.name, email:Faker::Internet.email, admin: 0)
user_9 = User.create(name: "Andre", email:Faker::Internet.email, password: "asd", admin: 1)

user_flight = UserFlight.create(user_id: user_3.id, flight_id: flight_4.id)
user_flight = UserFlight.create(user_id: user_1.id, flight_id: flight_3.id)
user_flight = UserFlight.create(user_id: user_6.id, flight_id: flight_2.id)
user_flight = UserFlight.create(user_id: user_5.id, flight_id: flight_6.id)
user_flight = UserFlight.create(user_id: user_4.id, flight_id: flight_1.id)

booking = Booking.create(num_booking: 12356, total:190, flight_id: 2)
booking_1 = Booking.create(num_booking: 16420, total:230, flight_id:6)
booking_2 = Booking.create(num_booking: 19989, total:320, flight_id:5)
booking_3 = Booking.create(num_booking: 19479, total:450, flight_id:4)
booking_4 = Booking.create(num_booking: 19479, total:450, flight_id:3)
booking_5 = Booking.create(num_booking: 19989, total:320, flight_id:1)

user_booking = UserBooking.create(booking_id: booking.id, user_id: user_1.id)
user_booking = UserBooking.create(booking_id: booking_3.id, user_id: user_2.id)
user_booking = UserBooking.create(booking_id: booking_1.id, user_id: user_5.id)
user_booking = UserBooking.create(booking_id: booking_2.id, user_id: user_3.id)
user_booking = UserBooking.create(booking_id: booking_4.id, user_id: user_6.id)

