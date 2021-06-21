class Bike < ApplicationRecord

  belongs_to :user
  has_many :reservations

  attachment :bike_image
  has_many_attached :bike_images

  validates :name, presence: true
  validates :price, presence: true
  validates :introduction, presence: true

end
