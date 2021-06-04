FactoryBot.define do
  factory :review do
    reviewer_id { 1 }
    reviewed_id { 1 }
    rate { 1 }
    review_comment { "MyText" }
  end
end
