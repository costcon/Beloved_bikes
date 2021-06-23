class Chat < ApplicationRecord

  belongs_to :user
  belongs_to :room

  validates :reservation_comment, length: { maximum: 200 }

end
