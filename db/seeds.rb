# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# delete existing database

puts "deleting items..."
Item.destroy_all
puts "deleting lists..."
List.destroy_all
puts "deleting users..."
User.destroy_all
puts "deleting orders..."
Order.destroy_all
puts "deleting households..."
Household.destroy_all

# create household

puts "creating household..."
household_1 = Household.create( name: "Love shack", address:"E1 6RB")
puts "household error message: #{household_1.errors.full_messages}"
puts "household created"

# create orders

# puts "creating orders..."

# order_1 = Order.create(household_id: household_1.id, end_date: DateTime.new(2023,9,1,17))
# order_2 = Order.create(household_id: household_1.id, end_date: DateTime.new(2021,9,1,17))
# order_3 = Order.create(household_id: household_1.id, end_date: DateTime.new(2020,9,1,17))
# order_4 = Order.create(household_id: household_1.id, end_date: DateTime.new(2019,9,1,17))

# puts "order 1 error message: #{order_1.errors.full_messages}"
# puts "order 2 error message: #{order_2.errors.full_messages}"
# puts "order 3 error message: #{order_3.errors.full_messages}"
# puts "order 4 error message: #{order_4.errors.full_messages}"

# puts "orders created"
# create users

puts "creating users..."


user_1 = User.create(name: Faker::Hipster.word, email: "user_1@email.com", password: 'changeme', password_confirmation: 'changeme', household_id: household_1.id)
user_2 = User.create(name: Faker::Hipster.word, email: "user_2@email.com", password: 'changeme', password_confirmation: 'changeme', household_id: household_1.id)
user_3 = User.create(name: Faker::Hipster.word, email: "user_3@email.com", password: 'changeme', password_confirmation: 'changeme', household_id: household_1.id)
user_4 = User.create(name: Faker::Hipster.word, email: "user_4@email.com", password: 'changeme', password_confirmation: 'changeme', household_id: household_1.id)

puts "user 1 error message: #{user_1.errors.full_messages}"
puts "user 2 error message: #{user_2.errors.full_messages}"
puts "user 3 error message: #{user_3.errors.full_messages}"
puts "user 4 error message: #{user_4.errors.full_messages}"

puts "users created"

# puts "creating lists..."

# # create lists


# list_1 = List.create(title: "list 1", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_1.id)
# list_2 = List.create(title: "list 2", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_1.id)
# list_3 = List.create(title: "list 3", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_1.id)
# list_4 = List.create(title: "list 4", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_2.id)
# list_5 = List.create(title: "list 5", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_2.id)
# list_6 = List.create(title: "list 6", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_2.id)
# list_7 = List.create(title: "list 7", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_3.id)
# list_8 = List.create(title: "list 8", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_3.id)
# list_9 = List.create(title: "list 9", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_3.id)
# list_10 = List.create(title: "list 10", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_4.id)
# list_11 = List.create(title: "list 11", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_4.id)
# list_12 = List.create(title: "list 12", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_4.id)

# puts "list 1 error message: #{list_1.errors.full_messages}"
# puts "list 2 error message: #{list_2.errors.full_messages}"
# puts "list 3 error message: #{list_3.errors.full_messages}"
# puts "list 4 error message: #{list_4.errors.full_messages}"
# puts "list 5 error message: #{list_5.errors.full_messages}"
# puts "list 6 error message: #{list_6.errors.full_messages}"
# puts "list 7 error message: #{list_7.errors.full_messages}"
# puts "list 8 error message: #{list_8.errors.full_messages}"
# puts "list 9 error message: #{list_9.errors.full_messages}"
# puts "list 10 error message: #{list_10.errors.full_messages}"
# puts "list 11 error message: #{list_11.errors.full_messages}"
# puts "list 12 error message: #{list_12.errors.full_messages}"

# puts "lists created"

# create items


# puts "creating items..."

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_1.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_2.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_3.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_4.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_5.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_6.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_7.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_8.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_9.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_10.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_11.id, price: [*1..3].sample)
# end

# 15.times do
#   Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_12.id, price: [*1..3].sample)
# end
