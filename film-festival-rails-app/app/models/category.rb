class Category < ActiveRecord::Base
  validates :title, presence: true

  has_many :movies

  def five_most_recent_reviews
    all_reviews = movies.map do |movie|
      movie.reviews
    end.flatten

    all_reviews.sort_by do |review|
      review.updated_at
    end.reverse[0..4]
  end
end
