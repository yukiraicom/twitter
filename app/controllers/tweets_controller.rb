class TweetsController < ApplicationController
  before_action :authenticate_user! 

  def index
    # binding.pry
    currentUser = User.find(current_user.id)
    followUser = Follow.where(user_id: currentUser.id)

    a = 0
    b = Array.new
    while a < followUser.length do
      b.push(followUser[a].followed_id)
      a += 1
    end

    @tweets = Tweet.where(user_id: b)
    @tweet = Tweet.new
    @tweetsnumber = Tweet.where(user_id: current_user.id).length
    tweetId = Tweet.last.id
    @tags = Hashtag.all
    @follow = Follow.where(user_id: current_user.id).count
    @follower = Follow.where(followed_id: current_user.id).count
  end

  def create
    Tweet.create(tweet_params)
    redirect_to action: :index
  end

  def tweetText(tweetText)
    tweet = tweetText.sub(/#.*/, "")
    return tweet
  end

  helper_method :tweetText
  helper_method :gTags
  
  private
  
  def tweet_params
    params.require(:tweet).permit(:text, :image).merge(user_id: current_user.id)
    #binding.pry
  end
end
