# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rhea = User.create(username: "rheaakiki", email: "rhea.akiki@myass.com", phone_number: "0505050055")
arbi = User.create(username: "arbiarbi", email: "arbi@myass.com", phone_number: "06060606")
daniel = User.create(username: "danieldaniel", email: "daniel@myass.com", phone_number: "0505070")
Field.create(title: "arbi's field", price: 50, address: "Travessera", owner: arbi)
Field.create(title: "rhea's field", price: 30, address: "beirut", owner: rhea)
Field.create(title: "daniel's field", price: 40, address: "barcelona", owner: daniel)
