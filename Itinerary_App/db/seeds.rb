Itinerary.destroy_all
Destination.destroy_all
User.destroy_all

colin = User.create(:first_name => "Colin", :last_name => "Craft", :email => "colin@email.com")
camilo = User.create(:first_name => "Camilo", :last_name => "Ordonez", :email => "camilo@email.com")
arebeth = User.create(:first_name => "Arebeth", :last_name => "Pease", :email => "arebeth@email.com")

europe = Itinerary.create(:origin, :destination :date)
nyc = Itinerary.create(:origin, :destination :date)

paris = Destination.create(:location, :name, :date)
rome = Destination.create(:location, :name, :date)
met = Destination.create(:location, :name, :date)
whitney = Destination.create(:location, :name, :date)
guggenheim = Destination.create(:location, :name, :date)
moma = Destination.create(:location, :name, :date)
bronxzoo = Destination.create(:location, :name, :date)

europe.destinations <<
nyc.destinations <<


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
