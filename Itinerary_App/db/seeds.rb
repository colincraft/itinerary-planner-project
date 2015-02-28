Itinerary.destroy_all
Destination.destroy_all
User.destroy_all

colin = User.create(:first_name => "Colin", :last_name => "Craft", :email => "colin@email.com")
camilo = User.create(:first_name => "Camilo", :last_name => "Ordonez", :email => "camilo@email.com")
arebeth = User.create(:first_name => "Arebeth", :last_name => "Pease", :email => "arebeth@email.com")

europe = Itinerary.create(origin: "New York", destination: "Europe", departure_date:"1/5/2014", return_date:"2/5/2014")
nyc = Itinerary.create(origin: "SFO", destination: "NYC", departure_date:"1/5/2014", return_date:"2/5/2014")

paris = Destination.create(location: "123, Paris Way", name: "Paris", date: "12/13/14")
rome = Destination.create(location: "123 Rome Way", name: "Rome", date: "12/14/14")
met = Destination.create(location: "NYC", name: "The Met", date:"1/15/15")
whitney = Destination.create(location: "NYC", name:"THe Whitney", date:"1/17/15")
guggenheim = Destination.create(location:"NYC", name:"Guggenheim", date:"1/18/15")
moma = Destination.create(location:"NYC", name:"Moma", date:"1/19/15")
bronxzoo = Destination.create(location:"NYC", name:"Bronx Zoo", date:"1/22/15")

europe.destinations << paris
europe.destinations << rome

nyc.destinations << met
nyc.destinations << whitney
nyc.destinations << guggenheim
nyc.destinations << moma
nyc.destinations << bronxzoo

colin.itineraries << europe
camilo.itineraries << nyc
arebeth.itineraries << nyc


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
