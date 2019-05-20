User.create!(name: "Le van tri",
 email: "vantri.dev@gmail.com",
 password: "123456",
 password_confirmation: "123456",
 address: "Quang Nam",
 phone: "12345678",
 role: 1,
 activated: true,
 created_at: (rand*10).days.ago
 )

User.create!(name: "Hoang Bich",
 email: "hbich95@gmail.com",
 password: "123456",
 password_confirmation: "123456",
 address: "Quang Nam",
 phone: "12345678",
 role: 1,
 activated: true,
 created_at: (rand*10).days.ago
 )

 User.create!(name: "Thuong Dan",
 email: "hbich@gmail.com",
 password: "123456",
 password_confirmation: "123456",
 address: "Quang Nam",
 phone: "12345678",
 role: 0,
 activated: true,
 created_at: (rand*100).days.ago
 )
100.times do |n|
  name  = Faker::Name.name
  email = "example#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
   email: email,
   password:password,
   password_confirmation: password,
   address: Faker::Address.street_name,
   phone: Faker::PhoneNumber.subscriber_number(length = 10),
   role: 0,
   activated: true,
   created_at: (rand*100).days.ago)
end

49.times do |n|
  name  = Faker::Name.name
  email = "rails#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
   email: email,
   password:password,
   password_confirmation: password,
   address: Faker::Address.street_name,
   phone: Faker::PhoneNumber.subscriber_number(length = 10),
   role: Faker::Number.between(0, 2),
   activated: false,
   created_at: (rand*100).days.ago)
end

<<<<<<< HEAD
Category.create!(name: "Foods", status: 1)
Category.create!(name: "Drinks", status: 1)

53.times do |n|
  category_id = 1
  name = "Foods#{n+1}"
  price = Faker::Number.between(10, 100)
  quantity = Faker::Number.between(1, 15)
  description = Faker::Lorem.sentence
  picture = nil
  avg_rating = 0
=======
# 10.times do |n|
#   product_id = 3
#   user_id = "#{n + 1}"
#   content = "Good, phuc vu chu dao"
# Comment.create!(
#   product_id: product_id,
#   user_id: user_id,
#   content: content
# )
# end
# OrderItem.create!(
#   order_id: 6,
#   product_id: 35,
#   price: 30,
#   quantity: 2
# )
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!(name: "Foods", status: 1)
Category.create!(name: "Drinks", status: 1)

# 25.times do |n|
#   category_id = 1
#   name = "Foods#{n+1}"
#   price = 200
#   quantity = 10
#   description = "Ngon, bổ, rẻ"
#   picture = "https://i.ibb.co/BZtH15r/banhmi.jpg"
#   avg_rating = 4.3
>>>>>>> order mail

#   Product.create!(
#     category_id: category_id,
#     name: name,
#     price: price,
#     quantity: quantity,
#     description: description,
#     avg_rating: avg_rating,
#     picture: picture
#   )
# end

47.times do |n|
  category_id = 2
  name = "Drinks#{n+1}"
  price = Faker::Number.between(10, 100)
  quantity = Faker::Number.between(1, 15)
  description = Faker::Lorem.sentence
  picture = nil
  avg_rating = 0

#   Product.create!(
#     category_id: category_id,
#     name: name,
#     price: price,
#     quantity: quantity,
#     description: description,
#     avg_rating: avg_rating,
#     picture: picture
#   )
# end

247.times do |n|
  user_id = Faker::Number.between(1, 100)
  status = Faker::Number.between(0, 5)
  total_price = Faker::Number.between(100, 1000)

  Order.create!(
    user_id: user_id,
    status: status,
    total_price: total_price,
    created_at: (rand*111).days.ago
  )
end

27.times do |n|
  user_id = Faker::Number.between(1, 100)
  status = Faker::Number.between(0, 5)
  total_price = Faker::Number.between(100, 1000)

  Order.create!(
    user_id: user_id,
    status: status,
    total_price: total_price,
  )
end

333.times do |n|
  order_id = Faker::Number.between(1, 200)
  product_id = Faker::Number.between(1, 80)
  price = Faker::Number.between(1, 100)
  quantity = Random.rand(10) + 1

  OrderItem.create!(
  order_id: order_id,
  product_id: product_id,
  price: price,
  quantity: quantity)
end


145.times do |n|
  product_id = Faker::Number.between(1, 80)
  user_id = "#{n + 1}"
  content = Faker::Lorem.sentence
Comment.create!(
  product_id: product_id,
  user_id: user_id,
  content: content,
  created_at: (rand*100).days.ago
)
end

55.times do |n|
  user_id = Random.rand(10) + 1
  category_id = Random.rand(2) + 1
  name = Faker::Name.name
  description = Faker::Lorem.sentence
  status = Random.rand(4)
  status == 1 ? new_category = Faker::Name.name : nil
Sugest.create!(
  user_id: user_id,
  category_id: category_id,
  name: name,
  description: description,
  status: status,
  new_category: new_category
)
end
