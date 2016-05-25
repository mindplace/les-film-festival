class Review < ActiveRecord::Base
  validates :description, :stars, presence: true
  validates :stars, numericality: { less_than_or_equal_to: 5.0 }

  belongs_to :user
  belongs_to :movie
  has_many :comments
end
