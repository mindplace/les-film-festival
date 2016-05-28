class Movie < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :title, uniqueness: true

  belongs_to :category
  has_many :reviews
  has_many :comments, through: :reviews

  def number_of_reviews
    reviews.length
  end

  def judge_reviews
    self.reviews.select {| review | review.user.role == "judge"}
  end

  def user_reviews
    self.reviews.select {| review | review.user.role == "user"}
  end

  def judge_ratings
    judge_reviews = reviews.select{ |r| r.user.judge? }
    return 0 if judge_reviews.empty?
    judge_reviews.map{ |r| r.stars }.inject(:+) / judge_reviews.length
  end

  def user_ratings
    user_reviews = reviews.select{ |r| r.user.user? }
    return 0 if user_reviews.empty?
    user_reviews.map{ |r| r.stars }.inject(:+) / user_reviews.length
  end

  def average_rating
    if self.number_of_reviews > 0
      ((judge_ratings * 0.8) + (user_ratings * 0.2)).round(1)
    else
      return "No ratings yet"
    end
  end

  def stars
    if average_rating.is_a?(Float)
      "#{average_rating} stars"
    else
      average_rating
    end
  end

  def self.sort_by_ratings(movies)
    rated = movies.select{|movie| movie.average_rating.is_a?(Float)}.sort_by{|movie| movie.average_rating}.reverse
    unrated = movies.select{|movie| movie.average_rating.is_a?(String)}
    rated + unrated
  end

  def self.four_samples
    sample_ids = [rand(10), rand(11..20), rand(21..30), rand(31..40)]
    sample_ids.map do |id|
      movie = Movie.find_by(id: id)
      movie.is_a?(Movie) ? movie : Movie.last
    end
  end

  def self.overall_winner
    reviewed_movies = Movie.all.select{|movie| movie.average_rating.is_a?(Float)}
    reviewed_movies.sort_by{|movie| movie.average_rating}.last
  end
end
