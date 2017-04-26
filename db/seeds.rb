# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
# Create myself
my_user = User.create!(
  username: 'annhnova',
  email: 'annhnova@gmail.com',
  password: 'annlovesmax',
  :confirmed_at => DateTime.now
)
my_user.skip_confirmation!
my_user.save!
# Create users
25.times do
  user = User.create!(
  username: Faker::Internet.user_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  )
  user.skip_confirmation!
  user.save!
end
users = User.all

# Create todos
100.times do
  item = Item.create!(
  name: Faker::Hacker.say_something_smart,
  user: users.sample
  )
  item.update_attribute(:created_at, Faker::Time.between(10.days.ago, Date.today, :all))
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
