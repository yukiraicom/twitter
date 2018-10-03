class TweetsController < ApplicationController
  before_action :authenticate_user! 

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all.order("created_at DESC")
    @tweetsnumber = Tweet.where(user_id: current_user.id).length
    tweetId = Tweet.last.id
    #@tags = Tag.where(tweet_id: tweetId).pluck(:tag)
    @tags = Hashtag.all
    @follow = Follow.where(user_id: current_user.id).count
    @follower = Follow.where(follow_id: current_user.id).count
    #binding.pry
    #if Favorite.where(user_id: current_user.id, tweet_id: )
  end

  def create
    Tweet.create(tweet_params)
    redirect_to action: :index
  end

  def tweetText(tweetText)
    tweet = tweetText.sub(/#.*/, "")
    return tweet
  end


  # def gTags(tweetId)
  #   tweetTags = Tag.where(tweet_id: :tweetId)
  #   return tweetTags
  # end

  helper_method :tweetText
  helper_method :gTags
  private
  
  def tweet_params
    params.require(:tweet).permit(:text, :image).merge(user_id: current_user.id)
    #binding.pry
  end

  # def get_hashTag
  #   binding.pry
  #   #hashTag = 
  # end

end
