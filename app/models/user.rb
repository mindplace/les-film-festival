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
  BIOGRAPHY = [
    "is an American actor, film producer, writer, and director best known for appearing in several films like Saving Private Ryan (1998) and One Missed Call (2008). Burns made his directorial debut with movies such as The Brothers McMullen (1995), She's the One (1996) and Sidewalks of New York (2001).",
    "is an American documentary filmmaker, humorist, television producer, screenwriter, and political activist, best known for the documentary films Super Size Me, Where In The World Is Osama Bin Laden, POM Wonderful Presents: The Greatest Movie Ever Sold, Comic-Con Episode IV: A Fan's Hope and One Direction: This Is Us. Spurlock was the executive producer and star of the reality television series 30 Days. As of June 2013, Spurlock hosts and produces the CNN show Inside Man and is the co-founder of short-film content marketing company cinelan, which produced the Focus Forward campaign for GE.",
    "is an American actor, known for his role as lawyer and law firm head Bobby Donnell on the television legal drama The Practice, which earned him a Golden Globe and an Emmy nomination, and his roles in the first two seasons of American Horror Story. He also starred in the TNT series Dark Blue as Lt. Carter Shaw. McDermott currently stars as FBI Special Agent Duncan Carlisle in the CBS drama Hostages.   In 2013, Dylan judged our Experimental and Original Score categories and was also an essential part of our Awards Ceremony, offering valuable insights to all attendees."
  ]

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

  def user?
    role == "user"
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
