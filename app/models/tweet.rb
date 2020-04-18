class Tweet < ApplicationRecord
  validates :text, presence: true

  belongs_to :user
  has_many :tweet_tags
  has_many :tags, through: :tweet_tags

  def self.search(search)
    return Tweet.all unless search

    Tweet.where('text LIKE(?)', "%#{search}%")
  end
end
