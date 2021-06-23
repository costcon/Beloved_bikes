class Bike < ApplicationRecord

  belongs_to :user
  has_many :reservations

  # Spotテーブルをネストすることで同時にフォームでのデータ送信可能
  has_one :spot, dependent: :destroy
  accepts_nested_attributes_for :spot

  attachment :bike_image

  validates :name, presence: true
  validates :price, presence: true
  validates :introduction, presence: true

end
