FactoryBot.define do
  factory :reserve do
    user_id { 1 }
    bike_id { 1 }
    reserve_date { "MyString" }
    payment_method { 1 }
    reserve_comment { "MyText" }
  end
end
