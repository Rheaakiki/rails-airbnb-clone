# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Field.destroy_all

rhea = User.create(username: "rheaakiki",
                    email: "rhea.akiki@myass.com",
                    phone_number: "0505050055")
arbi = User.create(username: "rbiarbi",
                  email: "arbi@myass.com",
                  phone_number: "06060606")
daniel = User.create(username: "danieldaniel",
                    email: "daniel@myass.com",
                    phone_number: "0505070")
field_1 = Field.new(title: "arbi's field",
              price: 50,
              address: "Travessera",
              owner: arbi)

field_1.photo = Rails.root.join("db/images/stadium.jpg").open
field_1.save!


field_3 = Field.new(title: "Daniel's Field", price: 40, address: "barcelona", owner: daniel)
field_3.photo = Rails.root.join("db/images/stadium.jpg").open
field_3.save!

field_2 = Field.new(title: "Rhea's Field", price: 30, address: "beirut", owner: rhea)
field_2.photo = Rails.root.join("db/images/stadium.jpg").open
field_2.save!



p field_1
