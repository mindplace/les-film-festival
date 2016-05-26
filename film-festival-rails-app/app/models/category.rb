class Category < ActiveRecord::Base
  validates :title, presence: true

  has_many :movies

  def five_most_recent_reviews
    all_reviews = movies.map{|movie| movie.reviews.flatten
    all_reviews.sort_by{|review| review.updated_at}.reverse[0..4]
  end

  def winner
    reviews = movies.map{|movie| movie.reviews}.flatten
    reviews.sort_by{|review| review.stars}.last.movie
  end
end
