# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cook.destroy_all

Cook.create!(speciality: "French", address_street: "58 domaine saint-hugues", address_town: "Grenoble", zipcode: "38120", home_style: "House", age: 22, capacity: 5, nickname: "Le Gros Ju", motto: "Plus c'est gras plus c'est bon", price: 20)

