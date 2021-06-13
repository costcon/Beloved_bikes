class Bike < ApplicationRecord

  belongs_to :user

  attachment :bike_image

  validates :name, presence: true
  validates :price, presence: true
  validates :introduction, presence: true

end
