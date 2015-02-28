class DestinationsItinerarysUser < ActiveRecord::Base
  belongs_to :destination
  belongs_to :itinerary
  belongs_to :user
end
