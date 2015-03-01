Itinerary.destroy_all
Destination.destroy_all
User.destroy_all

colin = User.create(:first_name => "Colin", :last_name => "Craft", :email => "colin@email.com")
camilo = User.create(:first_name => "Camilo", :last_name => "Ordonez", :email => "camilo@email.com")
arebeth = User.create(:first_name => "Arebeth", :last_name => "Pease", :email => "arebeth@email.com")

europe = Itinerary.create(origin: "New York", city: "Europe", departure_date:"1/5/2014", return_date:"2/5/2014", name_i: "My trip to Europe!")
nyc = Itinerary.create(origin: "SFO", city: "NYC", departure_date:"1/5/2014", return_date:"2/5/2014", name_i: "My trip to NYC!")

paris = Destination.create(location: "123, Paris Way", name_d: "Paris", date: "2014/5/14")
rome = Destination.create(location: "123 Rome Way", name_d: "Rome", date: "2012/4/12")
met = Destination.create(location: "NYC", name_d: "The Met", date:"2015/5/1")
whitney = Destination.create(location: "NYC", name_d:"THe Whitney", date:"2015/7/1")
guggenheim = Destination.create(location:"NYC", name_d:"Guggenheim", date:"2016/8/3")
moma = Destination.create(location:"NYC", name_d:"Moma", date:"2015/9/19")
bronxzoo = Destination.create(location:"NYC", name_d:"Bronx Zoo", date:"2015/10/18")

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
