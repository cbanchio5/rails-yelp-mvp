class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :content, length: { minimum: 5 }
  validates :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
