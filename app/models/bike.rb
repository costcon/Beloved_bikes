class Bike < ApplicationRecord

  belongs_to :user

  attachment :bike_image

end
