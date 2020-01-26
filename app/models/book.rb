class Book < ApplicationRecord
    has_many :book_genres
    has_many :genres, through: :book_genres
    has_many :book_users
    has_many :users, through: :book_users
    has_many :reviews

    validates :name, uniqueness: true, presence: true
    validates :page_count, presence: true
    validates :author, presence: true
    validates :release_date, presence: true
    validates :synopsis, length: { maximum: 250 }
end
