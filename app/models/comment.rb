class Comment < ActiveRecord::Base
  validates :body, presence: true

  belongs_to :user
  belongs_to :review

  def blurb
    body.split[0..10].join(" ") + "..."
  end
end
