# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'nokogiri'
# require 'json'
# require 'open-uri'

# url_starters = "http://www.delice-et-cuisine.com/recettes-cuisine/entrees/"

# entrees = {}

# html_file = open(url_starters)
# html_doc = Nokogiri::HTML(html_file)
# html_doc.search('.content a').each do |link|
#     url = link.attributes["href"]
#     puts url
#     html_file = open(url)
#     html_doc = Nokogiri::HTML(html_file)
#     recipe = html_doc.search('h1').text.strip.gsub(' ','-')
#     img_url = html_doc.search('.image').children.first.attr('src')
#     img_extension = img_url.split('.').last
#     path = Rails.root.join('app', 'assets', 'images')
#     system("wget #{img_url} -P #{path}")
# end


Cook.destroy_all

Cook.create!(speciality: "French", address_street: "58 domaine saint-hugues", address_town: "Grenoble", zipcode: "38120", home_style: "House", age: 22, capacity: 5, nickname: "Le Gros Ju", motto: "Plus c'est gras plus c'est bon", price: 20)

100.times  do
  system("say jaime les bites")
end
