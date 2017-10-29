# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'

puts "Deleting all current drinks..."
Drink.destroy_all
puts "Done!"

puts "Deleting all current pubs..."
Pub.destroy_all
puts "Done!"

puts "Deleting all current cities..."
City.destroy_all
puts "Done!"

puts "Creating all necessary cities..."
City.create!(city_name: "Nottingham")
puts "Done!"


# url = "http://www.beerintheevening.com/pubs/results.shtml/el/Nottingham%3BNottinghamshire/"

# puts "Reading the json file..."
# pubs_html_file = open(url).read
# puts "Done!"

# puts "Storing the content of the json file in a hash..."
# pubs_html_doc = Nokogiri::HTML(pubs_html_file)
# puts "Done!"

puts "Seeding pubs..."
Pub.create!(name: "The Cross Keys", opening_time: Time.new(2017, 10, 29, 12, 0, 0), closing_time: Time.new(2017, 10, 29, 23, 30, 0), food: true, city_id: City.first.id, offer: false, address: "15 Byard Lane, Nottingham NG1 2GJ")
Pub.create!(name: "Ye Olde Trip to Jerusalem", opening_time: Time.new(2017, 10, 29, 12, 0, 0), closing_time: Time.new(2017, 10, 29, 23, 30, 0), food: true, city_id: City.first.id, offer: false, address: "1 Brewhouse Yard, Nottingham NG1 6AD")
Pub.create!(name: "Ye Olde Salutation Inn", opening_time: Time.new(2017, 10, 29, 12, 0, 0), closing_time: Time.new(2017, 10, 29, 23, 30, 0), food: true, city_id: City.first.id, offer: false, address: "Hounds Gate, Nottingham NG1 7AA")
Pub.create!(name: "Cock & Hoop", opening_time: Time.new(2017, 10, 29, 12, 0, 0), closing_time: Time.new(2017, 10, 29, 23, 30, 0), food: true, city_id: City.first.id, offer: false, address: "25 High Pavement, Nottingham NG1 1HE")
Pub.create!(name: "The Crown", opening_time: Time.new(2017, 10, 29, 12, 0, 0), closing_time: Time.new(2017, 10, 29, 23, 30, 0), food: true, city_id: City.first.id, offer: false, address: "Western Blvd, Nottingham NG8 1PE")
Pub.create!(name: "Horse & Jockey", opening_time: Time.new(2017, 10, 29, 12, 0, 0), closing_time: Time.new(2017, 10, 29, 23, 30, 0), food: true, city_id: City.first.id, offer: false, address: "20 Nottingham Rd, Stapleford, Nottingham NG9 8AA")
Pub.create!(name: "The Old Reindeer", opening_time: Time.new(2017, 10, 29, 12, 0, 0), closing_time: Time.new(2017, 10, 29, 23, 30, 0), food: true, city_id: City.first.id, offer: false, address: "Main St, Edingley, Newark NG22 8BE")
Pub.create!(name: "Roebuck Inn", opening_time: Time.new(2017, 10, 29, 12, 0, 0), closing_time: Time.new(2017, 10, 29, 23, 30, 0), food: true, city_id: City.first.id, offer: false, address: "9-11 St James's St, Nottingham NG1 6FH")
Pub.create!(name: "The Hutt", opening_time: Time.new(2017, 10, 29, 12, 0, 0), closing_time: Time.new(2017, 10, 29, 23, 30, 0), food: true, city_id: City.first.id, offer: false, address: "Nottingham Road, Nottingham NG15 9HJ")
Pub.create!(name: "The Redgate Inn", opening_time: Time.new(2017, 10, 29, 12, 0, 0), closing_time: Time.new(2017, 10, 29, 23, 30, 0), food: true, city_id: City.first.id, offer: false, address: "189 Westfield Ln, Mansfield NG19 6EH")
puts "Done!"


puts "Seeding drinks..."
Drink.create!(name: "Stella Artois", abv: 5.0, pub_id: Pub.all[0].id)
Drink.create!(name: "Guinness", abv: 4.1, pub_id: Pub.all[1].id)
Drink.create!(name: "Budweiser", abv: 5.0, pub_id: Pub.all[2].id)
Drink.create!(name: "Newcastle Brown Ale", abv: 4.7, pub_id: Pub.all[3].id)
Drink.create!(name: "Hoegaarden Witbier", abv: 5.0, pub_id: Pub.all[4].id)
Drink.create!(name: "Amstel Lager", abv: 5.0, pub_id: Pub.all[5].id)
Drink.create!(name: "Pilsner Urquell", abv: 4.4, pub_id: Pub.all[6].id)
Drink.create!(name: "Peroni Nastro Azzurro", abv: 5.2, pub_id: Pub.all[7].id)
Drink.create!(name: "Sierra Nevada Pale Ale", abv: 5.6, pub_id: Pub.all[8].id)
Drink.create!(name: "Brewdog Punk IPA", abv: 5.6, pub_id: Pub.all[9].id)
puts "Done!"
