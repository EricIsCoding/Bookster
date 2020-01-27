class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :score, numericality: {greater_than: 0, less_than_or_equal_to: 10}
  validates :content, length: { in: 20...250 }

  scope :written_by_user, ->(user) { where("user = ?", user) }
  scope :in_descending_order, -> { order("score DESC") }

end
