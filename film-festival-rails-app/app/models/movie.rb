class Movie < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :title, uniqueness: true

  belongs_to :category
  has_many :reviews
  has_many :comments, through: :reviews
end
