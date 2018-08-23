class TweetsController < ApplicationController

  before_action :authenticate_user!

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all.order("created_at DESC")
    #binding.pry
  end

  def create
    Tweet.create(tweet_params)
    redirect_to action: :index
  end
  
  private
  
  def tweet_params
    params.require(:tweet).permit(:text)
  end

end
