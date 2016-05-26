class Review < ActiveRecord::Base
  validates :description, :stars, presence: true
  validates :stars, numericality: { less_than_or_equal_to: 5.0 }

  belongs_to :user
  belongs_to :movie
  has_many :comments

  def blurb
    description.split[0..10].join(" ") + "..."
  end

  def format_time
    updated_at.strftime("%B %d, %Y")
  end
end'[]
