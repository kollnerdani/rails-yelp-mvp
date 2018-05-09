class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :message => "/Put some name BITCH!"
  validates_presence_of :address, :message => "/Put some address BITCH!"
  validates :category, presence: true, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid category BITCH!" }

end

