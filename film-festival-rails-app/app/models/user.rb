class User < ActiveRecord::Base
  validates :username, :email, :password, :role, presence: true
  validates :username, uniqueness: true
  validate :is_valid_email, on: :create

  has_secure_password

  has_many :reviews
  has_many :comments
  has_many :reviewed_movies, through: :reviews, source: :movie

  attr_accessor :token

  TOKENS = {"judge-token-123" => "judge", "admin-token-456" => "admin"}

  def is_valid_email
    unless email.match(/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
      self.errors[:email].push("Not a valid email address: should resemble 'user@example.com'")
    end
  end

  def judge?
    role == "judge"
  end

  def admin?
    role == "admin"
  end

  def determine_role
    self.role = TOKENS[token]
    self.errors[:token].push("Incorrect token") if role.nil?
  end

  def self.judges
    User.where(role: "judge")
  end

  def self.admins
    User.where(role: "admin")
  end
end
