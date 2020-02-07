class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :created_books, class_name: "Book", dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :reviewed_books, through: :reviews, source: "book"
end
