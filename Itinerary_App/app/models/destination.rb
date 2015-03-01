class Destination < ActiveRecord::Base
  belongs_to :itinerary
  has_many :reviews, as: :reviewable

  validates :location, :presence => true
  validates :name_d, :presence => true
  validates :date, :presence => true
end
