class User < ActiveRecord::Base
  has_many :destinations_itinerarys_users
  has_many :itineraries, through: :destinations_itinerarys_users
  
  has_many :reviews, as: :reviewable
end
