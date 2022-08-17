class Review < ApplicationRecord
  belongs_to :restaurant
  RATINGS = [0, 1, 2, 3, 4, 5]

  validates :rating, presence: true, inclusion: { in: RATINGS }, numericality: { only_integer: true }
  validates :content, presence: true
end
