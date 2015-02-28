class Destination < ActiveRecord::Base
  belongs_to :itinerary
  has_many :reviews, as: :reviewable

  validate :location, :presence => true
  validate :name_d, :presence => true
  validate :date, :presence => true
end
