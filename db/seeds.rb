require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    name: "Eric J",
    username: "Eric J",
    email: "eric@eric.com",
    password: "Fake1234",
    password_confirmation: "Fake1234"
)


24.times.with_index do |index|
    fake_name = Faker::Name.unique.name
    User.create(
        name: fake_name,
        username: Faker::Internet.username(specifier: fake_name),
        email: Faker::Internet.safe_email(name: fake_name),
        password: "FakePass#{index + 1}",
        password_confirmation: "FakePass#{index + 1}"
    )
end

12.times do 
    Genre.create(
        name: Faker::Book.unique.genre,
        description: Faker::Lorem.sentence
    )
end

25.times.with_index do |index|
    if index < 10
        user = rand(1...25)
    else
        user = 1
    end
    genres = []
    rand(1...5).times do
        genres << Genre.find(rand(1...12)).id
    end
     Book.create(
        name: Faker::Book.title,
        author: Faker::Book.author,
        page_count: rand(180...650),
        release_date: Faker::Date.in_date_period,
        synopsis: Faker::Lorem.paragraph,
        user_id: user, 
        genre_ids: genres
     )
end

50.times do 
    Review.create(
        score: rand(1...10),
        content: Faker::Lorem.paragraph,
        user_id: rand(1...25),
        book_id: rand(1...100)
    )
end