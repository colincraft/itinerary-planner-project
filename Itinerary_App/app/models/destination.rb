class Destination < ActiveRecord::Base
  has_many :itinerary
  has_many :reviews, as: :reviewable
end
