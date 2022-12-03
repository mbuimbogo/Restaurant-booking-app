# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Seeding data'


user = User.create(name: "Sophia Nganga", username: "Kabda")
first = User.create(name: "Verah Njenga", username: "Vee")
second = User.create(name: "Nana Owiti", username: " Vin")

#restaurants seed
balk = Restaurant.create(name: "Dhaba Resto", city: "Nairobi", state: "Kenya")
cruise = Restaurant.create(name: "Kona baridi", city: "Kiserian", state: "Kenya")

Booking.create("condition": "booked", "user_id":user.id, "restaurant_id":balk.id)
Booking.create("condition": "not_booked", "user_id":user.id, "restaurant_id":balk.id)
Booking.create("condition": "not_booked", "user_id":first.id, "restaurant_id":cruise.id)
Booking.create("condition": "not_booked", "user_id":second.id, "restaurant_id":balk.id)

puts 'Done!'