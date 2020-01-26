class Book < ApplicationRecord
    has_many :book_genres, dependent: :destroy
    has_many :genres, through: :book_genres
    has_many :book_users, dependent: :destroy
    has_many :users, through: :book_users
    has_many :reviews, dependent: :destroy

    validates :name, uniqueness: true, presence: true
    validates :page_count, presence: true
    validates :author, presence: true
    validates :release_date, presence: true
    validates :synopsis, length: { in: 10...250 }
end
