class Category < ActiveRecord::Base
  validates :title, presence: true

  has_many :movies

  def five_most_recent_reviews
    all_reviews = movies.map{|movie| movie.reviews}.flatten
    all_reviews.sort_by{|review| review.updated_at}.reverse[0..4]
  end

  def winner
    reviewed_movies = movies.select{|movie| movie.average_rating.is_a?(Float)}
    reviewed_movies.sort_by{|movie| movie.average_rating}.last
  end
end
