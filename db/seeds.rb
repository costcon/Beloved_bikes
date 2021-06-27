# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Admin.create!(
   name: 'admin1',
   email: 'admin@admin.com',
   password: 'adminadmin',
)

User.create!(
  last_name: '太郎',
  first_name: 'テスト',
  last_name_kana: 'たろう',
  first_name_kana: 'てすと',
  nickname: 'ro-land',
  profile_image: File.open("./app/assets/images/0.jpeg"),
  postal_code: '1111111',
  address: '東京都名無し市無人町1-11-1',
  telephone_number: '11111111111',
  profile_comment: '自慢の愛車たちです。大切に乗ってあげてください。',
  license_number: '1111111111111',
  license_date: '19991024',
  license_expiration: '20221131',
  license_image_1: File.open("./app/assets/images/licence.png"),
  license_image_2: File.open("./app/assets/images/licence.png"),
  email: 'test@test.com',
  password: 'testtest',
)

User.create!(
  last_name: '来舵',
  first_name: '倍駒',
  last_name_kana: 'らいだー',
  first_name_kana: 'ばいく',
  nickname: 'Rider',
  profile_image: File.open("./app/assets/images/ito.png"),
  postal_code: '1111111',
  address: '東京都名無し市無人町1-11-1',
  telephone_number: '11111111111',
  profile_comment: '与露死苦ぅ！！',
  license_number: '1111111111111',
  license_date: '19801111',
  license_expiration: '20221231',
  license_image_1: File.open("./app/assets/images/licence.png"),
  license_image_2: File.open("./app/assets/images/licence.png"),
  email: 'abc@abc.com',
  password: 'testtest',
)

User.create!(
  last_name: '大佐',
  first_name: 'ムスカ',
  last_name_kana: 'たいさ',
  first_name_kana: 'むすか',
  nickname: 'msk',
  profile_image: File.open("./app/assets/images/musuka.png"),
  postal_code: '1111111',
  address: '東京都名無し市無人町1-11-1',
  telephone_number: '11111111111',
  profile_comment: '今週末はどこへ行こうというのかね！',
  license_number: '1111111111111',
  license_date: '19801111',
  license_expiration: '20221231',
  license_image_1: File.open("./app/assets/images/licence.png"),
  license_image_2: File.open("./app/assets/images/licence.png"),
  email: 'musuka@msk.com',
  password: 'testtest',
)


Bike.create!(
  user_id: '1',
  name: 'YAMAHA FZR600',
  introduction: '最高の走りをします！おすすめです',
  maker: 'YAMAHA',
  displacement: '600cc',
  price: '5000',
  mileage: '20000km',
  modek_year: '2000年式',
  area: '東京都',
  at_mt: 'MT',
  cancel_fee72: '30',
  cancel_fee24: '50',
  cancel_fee_otd: '100',
  vehicle_inspection: File.open("./app/assets/images/licence.png"),
  is_active: true,
  bike_image: File.open("./app/assets/images/YAMAHA FZR600.jpeg"),
)

Spot.create!(
  bike_id: '1',
  address: '東京駅',
  latitude: '35.6806303',
  longitude: '139.7687578'
)

Bike.create!(
  user_id: '1',
  name: 'YAMAHA XT500',
  introduction: '最高の走りをします！おすすめです',
  maker: 'YAMAHA',
  displacement: '500cc',
  price: '6000',
  mileage: '15000km',
  modek_year: '2010年式',
  at_mt: 'MT',
  cancel_fee72: '30',
  cancel_fee24: '50',
  cancel_fee_otd: '100',
  vehicle_inspection: File.open("./app/assets/images/licence.png"),
  area: '東京都',
  is_active: true,
  bike_image: File.open("./app/assets/images/YAMAHA XT500.jpeg"),
)

Spot.create!(
  bike_id: '2',
  address: '東京駅',
  latitude: '35.6806303',
  longitude: '139.7687578'
)

Bike.create!(
  user_id: '2',
  name: 'ハーレー',
  introduction: '最高の走りをします！おすすめです',
  maker: 'Harley-Davidson',
  displacement: '850cc',
  price: '8000',
  mileage: '20000km',
  modek_year: '2000年',
  at_mt: 'MT',
  cancel_fee72: '30',
  cancel_fee24: '50',
  cancel_fee_otd: '100',
  vehicle_inspection: File.open("./app/assets/images/licence.png"),
  area: '東京都',
  is_active: true,
  bike_image: File.open("./app/assets/images/ハーレー.jpeg"),
)

Spot.create!(
  bike_id: '3',
  address: '東京駅',
  latitude: '35.6806303',
  longitude: '139.7687578'
)

Bike.create!(
  user_id: '3',
  name: 'Honda カブ',
  introduction: '最高の走りをします！おすすめです',
  maker: 'Honda',
  displacement: '50cc',
  price: '4000',
  mileage: '7000km',
  modek_year: '2008年',
  at_mt: 'AT',
  cancel_fee72: '30',
  cancel_fee24: '50',
  cancel_fee_otd: '100',
  vehicle_inspection: File.open("./app/assets/images/licence.png"),
  area: '東京都',
  is_active: true,
  bike_image: File.open("./app/assets/images/Honda cub.jpeg"),
)

Spot.create!(
  bike_id: '4',
  address: '東京駅',
  latitude: '35.6806303',
  longitude: '139.7687578'
)

20.times do |n|
  Bike.create!(
    user_id: '3',
    name: "テスト#{n + 1}",
    introduction: 'テスト!#{n + 1}台目 最高の走りをします！おすすめです',
    maker: 'Honda',
    displacement: '50cc',
    price: "#{n + 1}000",
    mileage: "#{n + 1}000km",
    modek_year: '2010年',
    at_mt: 'MT',
    cancel_fee72: '50',
    cancel_fee24: '70',
    cancel_fee_otd: '100',
    vehicle_inspection: File.open("./app/assets/images/licence.png"),
    area: '東京都',
    is_active: true,
    bike_image: File.open("./app/assets/images/ハーレー２.jpeg"),
  )
end

20.times do |n|
  Spot.create!(
    bike_id: "#{n + 5}",
    address: '東京駅',
    latitude: '35.6806303',
    longitude: '139.7687578'
  )
end