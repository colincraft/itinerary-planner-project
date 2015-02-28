class DestinationsItinerarysUser < ActiveRecord::Base
  belongs_to :destination
  belongs_to :itinerary
  belongs_to :user

  validates :user_id, :uniqueness => true


end
