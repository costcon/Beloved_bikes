FactoryBot.define do
  factory :bike do
    user_id { 1 }
    name { "MyString" }
    bike_image_id { 1 }
    maker { "MyString" }
    displacement { "MyString" }
    price { 1 }
    mileage { "MyString" }
    modek_year { "MyString" }
    favorite { false }
    is_active { false }
  end
end
