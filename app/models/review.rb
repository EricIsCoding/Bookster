class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :score, numericality: {greater_than: 0, less_than_or_equal_to: 10}
  validates :content, length: { in: 20...250 }
end
