class Genre < ApplicationRecord
    has_many :book_genres, dependent: :destroy
    has_many :books, through: :book_genres
  
    validates :name, presence: true
    validates :description, length: { in: 10...200}  
end
