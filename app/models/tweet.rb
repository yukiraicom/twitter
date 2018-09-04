class Tweet < ApplicationRecord
  before_commit :get_hashTag
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :hashtags

  def get_hashTag
    tweet = Tweet.pluck(:text).last
    tag = tweet.slice(/#.*/)
    #binding.pry
    if tag
      tags = tag.split("#").reject(&:blank?)
    else
      return
    end
    tagHash = {}
    tags.each{|tag|
      dbTag = Tag.new
      dbTag.tag = tag
      dbTag.tweet_id = Tweet.last.id
      dbTag.save
    }
  end
end
