class Review < ApplicationRecord

  belongs_to :reviewer, class_name:"User"
  belongs_to :reviewed, class_name:"User"



  validates :evaluation, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 0.5
  }, presence: true

  validates :review_comment, length: { maximum: 200 }


end
