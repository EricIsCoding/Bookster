class Book < ApplicationRecord
    has_many :bookgenres
    has_many :genres, through: :bookgenres
    has_many :bookusers
    has_many :users, through: :bookusers
    has_many :reviews

    validates :name, uniqueness: true, presence: true
    validates :page_count, presence: true
    validates :author, presence: true
    validates :release_date, presence: true
    validates :synopsis, length: { maximum: 250 }
end
