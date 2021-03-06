class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :score, numericality: {greater_than: 0, less_than_or_equal_to: 10}
  validates :content, length: { in: 20...250 }

  scope :written_by_user, ->(user) { where("user_id = ?", user.id) }
  scope :in_descending_order, -> { order("score DESC") }
  scope :in_ascending_order, -> { order("score DESC")}
  scope :greater_than, ->(num) { where("score > ?", num) }
  scope :less_than, ->(num) { where("score < ?", num)}
end
