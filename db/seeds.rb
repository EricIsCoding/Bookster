require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 25.times.with_index do |index|
#     fake_name = Faker::Name.unique.name
#     User.create(
#         name: fake_name,
#         username: Faker::Internet.username(specifier: fake_name),
#         email: Faker::Internet.safe_email(name: fake_name),
#         password: "FakePass#{index + 1}",
#         password_confirmation: "FakePass#{index + 1}"
#     )
# end

# 25.times do
#      Book.create(
#         name: Faker::Book.title,
#         author: Faker::Book.author,
#         page_count: rand(180...650),
#         release_date: Faker::Date.in_date_period,
#         synopsis: Faker::Lorem.characters(number: 30...200)
#      )
# end

# 12.times do 
#     Genre.create(
#         name: Faker::Book.unique.genre,
#         description: Faker::Lorem.sentences(number: 1)
#     )
# end