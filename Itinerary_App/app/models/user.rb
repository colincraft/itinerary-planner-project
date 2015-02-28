class User < ActiveRecord::Base
  has_many :destinations_itinerarys_users
  has_many :itineraries, through: :destinations_itinerarys_users
  has_many :reviews, as: :reviewable

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true, :uniqueness => true

end
