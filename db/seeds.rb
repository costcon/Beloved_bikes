# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  last_name: '太郎',
  first_name: 'テスト',
  last_name_kana: 'たろう',
  first_name_kana: 'てすと',
  postal_code: '1111111',
  telephone_number: '11111111111',
  profile_comment: '自慢の愛車たちです。大切に乗ってあげてください。',
  license_number: '1111111111111',
  license_date: '19991024',
  license_expiration: '20221131',
  email: 'test@test.com',
  password: 'testtest',
)


Bike.create!(
  user_id: '1',
  name: 'YAMAHA FZR600',
  maker: 'YAMAHA',
  displacement: '600cc',
  price: '5000',
  mileage: '20000km',
  modek_year: '2000年式',
  is_active: true,
  image: File.open("./app/assets/images/YAMAHA FZR600.jpeg"),
)

Bike.create!(
  user_id: '1',
  name: 'YAMAHA XT500',
  maker: 'YAMAHA',
  displacement: '500cc',
  price: '6000',
  mileage: '15000km',
  modek_year: '2010年式',
  is_active: true,
  image: File.open("./app/assets/images/YAMAHA XT500.jpeg"),
)

Bike.create!(
  user_id: '1',
  name: 'ハーレー',
  maker: 'Harley-Davidson',
  displacement: '850cc',
  price: '8000',
  mileage: '20000km',
  modek_year: '2000年式',
  is_active: true,
  image: File.open("./app/assets/images/ハーレー.jpeg"),
)

Bike.create!(
  user_id: '1',
  name: 'ハーレー2',
  maker: 'Harley-Davidson',
  displacement: '600cc',
  price: '5000',
  mileage: '20000km',
  modek_year: '2000年式',
  is_active: true,
  image: File.open("./app/assets/images/ハーレー２.jpeg"),
)