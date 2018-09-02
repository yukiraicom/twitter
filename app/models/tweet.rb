class Tweet < ApplicationRecord
  before_commit :get_hashTag
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :tweets

  def get_hashTag
    tweet = Tweet.pluck(:text).last
     tag = tweet.slice(/#.*/)
     tag = tag.to_s
     tagHash = {}
     tagHash["tags"] = tag
     Tweet.last.update(tagHash)
     #Tweet
     #binding.pry
  end
end
