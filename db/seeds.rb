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
household_1 = Household.create( name: "Love shack")


puts "household created"

# create orders

puts "creating orders..."

order_1 = Order.create(household_id: household_1.id, end_date: DateTime.new(2023,9,1,17))
order_2 = Order.create(household_id: household_1.id, end_date: DateTime.new(2021,9,1,17))
order_3 = Order.create(household_id: household_1.id, end_date: DateTime.new(2020,9,1,17))
order_4 = Order.create(household_id: household_1.id, end_date: DateTime.new(2019,9,1,17))

puts "orders created"
# create users

puts "creating users..."


# Currently there is no household id, uncomment and delete below once we have this
# user_1 = User.create(email: "user_1@email.com", encrypted_password: "123456", household_id: household_1.id)
# user_2 = User.create(email: "user_2@email.com", encrypted_password: "123456", household_id: household_1.id)
# user_3 = User.create(email: "user_3@email.com", encrypted_password: "123456", household_id: household_1.id)
# user_4 = User.create(email: "user_4@email.com", encrypted_password: "123456", household_id: household_1.id)

user_1 = User.create(email: "user_1@email.com", encrypted_password: "123456")
user_2 = User.create(email: "user_2@email.com", encrypted_password: "123456")
user_3 = User.create(email: "user_3@email.com", encrypted_password: "123456")
user_4 = User.create(email: "user_4@email.com", encrypted_password: "123456")

puts "users created"

puts "creating lists..."

# create lists


list_1 = List.create(title: "list 1", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_1.id)
list_2 = List.create(title: "list 2", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_1.id)
list_3 = List.create(title: "list 3", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_1.id)
list_4 = List.create(title: "list 4", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_2.id)
list_5 = List.create(title: "list 5", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_2.id)
list_6 = List.create(title: "list 6", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_2.id)
list_7 = List.create(title: "list 7", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_3.id)
list_8 = List.create(title: "list 8", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_3.id)
list_9 = List.create(title: "list 9", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_3.id)
list_10 = List.create(title: "list 10", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_4.id)
list_11 = List.create(title: "list 11", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_4.id)
list_12 = List.create(title: "list 12", description: Faker::Hipster.paragraph, order_id: order_1.id, user_id: user_4.id)

puts "lists created"

# create items


puts "creating items..."

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_1.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_2.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_3.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_4.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_5.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_6.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_7.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_8.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_9.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_10.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_11.id)
end

15.times do
  Item.create(name: Faker::Food.ingredient, quantity: [*1..9].sample * 100, unit: "g", aisle: Faker::Food.ethnic_category, category: Faker::Food.ethnic_category, list_id: list_12.id)
end
