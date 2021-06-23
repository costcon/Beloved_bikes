class Spot < ApplicationRecord

  # belongs_to :review_id
  belongs_to :bike

  geocoded_by :address
  after_validation :geocode

end
