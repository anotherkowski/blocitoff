# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
# Create myself
User.create!(
  username: 'annhnova',
  email: 'annhnova@gmail.com',
  password: 'annlovesmax'
)
# Create users
25.times do
  User.create!(
  username: Faker::Internet.user_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
end
users = User.all

# Create todos
100.times do
  item = Item.create!(
  name: Faker::Hacker.say_something_smart,
  user: users.sample
  )
  item.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
