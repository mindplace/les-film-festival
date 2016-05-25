class Movie < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :title, uniqueness: true

  belongs_to :category
  has_many :reviews
  has_many :comments, through: :reviews


  def number_of_reviews
    self.reviews.length
  end

  def judge_ratings
    judge_reviews = reviews.select{ |r| r.user.judge? }
    judge_reviews.map{ |r| r.stars }.inject(:+) / judge_reviews.length / 2
  end

  def user_ratings
    user_reviews = reviews.select{ |r| r.user.user? }
    user_reviews.map{ |r| r.stars }.inject(:+) / user_reviews.length
  end

  def average_rating
    if self.number_of_reviews > 0
      (judge_ratings * 0.7) + (user_ratings * 0.3)
      # ((self.reviews.reduce(0) {|sum, review| sum + review.stars}) / (self.number_of_reviews)).round(1)
    else
      return "No ratings yet"
    end
  end
end
