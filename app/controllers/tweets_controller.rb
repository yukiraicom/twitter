class TweetsController < ApplicationController

  before_action :authenticate_user!

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all.order("created_at DESC")
    @tweetsnumber = Tweet.where(user_id: current_user.id).length
  end

  def create
    Tweet.create(tweet_params)
    redirect_to action: :index
  end
  
  private
  
  def tweet_params
    params.require(:tweet).permit(:text, :image).merge(user_id: current_user.id)
  end

end
