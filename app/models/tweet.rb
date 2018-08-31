class Tweet < ApplicationRecord
  before_commit :get_hashTag
  mount_uploader :image, ImageUploader
  belongs_to :user

  def get_hashTag
    tweet = Tweet.last(1).pluck(:text)

    binding.pry
    #hashTag = 
  end
end
