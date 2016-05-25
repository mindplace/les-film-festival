class Movie < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :title, uniqueness: true

  belongs_to :category
  has_many :reviews
  has_many :comments, through: :reviews


  def number_of_reviews
    self.reviews.length
  end

  def average_rating
    if self.number_of_reviews >= 1
      ((self.reviews.reduce(0) {|sum, review| sum + review.stars}) / (self.number_of_reviews)).round(1)
    else
      return "No ratings yet"
    end
  end
end
