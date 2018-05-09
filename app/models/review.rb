class Review < ApplicationRecord
  validates_presence_of :content, :message => "Put some content BITCH!"
  validates_numericality_of :rating
  validates :rating, inclusion: { in: 0..5, message: "Raaaaating BITCH" }, presence: true

  belongs_to :restaurant
end
