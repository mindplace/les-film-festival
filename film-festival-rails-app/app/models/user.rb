class User < ActiveRecord::Base
  validates :username, :email, :password, :role, presence: true
  validates :username, uniqueness: true
  validate :is_valid_email, on: :create

  has_secure_password

  has_many :reviews
  has_many :comments
  has_many :reviewed_movies, through: :reviews, source: :movie

  def is_valid_email
    unless email.match(/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
      self.errors[:email].push("Not a valid email address: should resemble 'user@example.com'")
    end
  end
end
