class Itinerary < ActiveRecord::Base
  has_many :destinations_itinerarys_users
  has_many :users, through: :destinations_itinerarys_users
  has_many :destinations
  has_many :reviews, as: :reviewable

  validates :name_i, :presence => true
  validates :origin, :presence => true
  validates :city, :presence => true
end
