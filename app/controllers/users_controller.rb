class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @tweets = @tweets = Tweet.where(user_id: params[:id]).order("created_at DESC")
    @follow = Follow.new
    @associations = Follow.where(follow_id: current_user.id)
    @associations.each do |association|
      @boolean = false if association.user_id == @user 
    end
    #binding.pry
  end

  def create
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
end
