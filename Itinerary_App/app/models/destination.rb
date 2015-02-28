class Destination < ActiveRecord::Base
  belongs_to :itinerary
<<<<<<< HEAD

  has_many :reviews, as: :reviewable 
=======
  has_many :reviews, as: :reviewable
>>>>>>> 668a132fe0fa96eca80c4f62426bde4ce873012a
end
