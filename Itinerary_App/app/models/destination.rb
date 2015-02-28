class Destination < ActiveRecord::Base
  belongs_to :itinerary
  has_many :reviews, as: :reviewable
end
