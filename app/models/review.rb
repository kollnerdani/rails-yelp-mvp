class Review < ApplicationRecord
  validates :content, presence: true
  validates_numericality_of :rating
  validates :rating, inclusion: { in: 0..5, message: "%{value} is not between 0 and 5" }, presence: true

  belongs_to :restaurant
end
