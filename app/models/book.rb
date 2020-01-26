class Book < ApplicationRecord
    has_many :bookgenres
    has_many :genres, through: :bookgenres
    has_many :bookusers
    has_many :readers, foreign_key: "user_id", class_name: "User"
    has_many :reviews

end
