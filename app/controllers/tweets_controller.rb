class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def create
    Tweet.create(tweet_params)
  end
  
  private
  
  def tweet_params
    params.permit(:text)
  end
end
