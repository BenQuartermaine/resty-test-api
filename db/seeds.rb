# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Starting seeds'

  10.times do
    user = User.new(email: Faker::Internet.email, password: '123456')
    user.save
    restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.country, user_id: user.id)
    restaurant.save
    comment = Comment.new(content: Faker::Quote.famous_last_words, user_id: user.id, restaurant_id: restaurant.id)
    comment.save
  end
  
puts 'Finished seeding'