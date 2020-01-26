class Book < ApplicationRecord
    has_many :bookgenres
    has_many :genres, through: :bookgenres
    has_many :bookusers
    has_many :users, through: :bookusers
    has_many :reviews

end
