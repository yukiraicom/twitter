class TweetsController < ApplicationController
  before_action :authenticate_user!
  #before_save  :get_hashTag


  def index
    @tweet = Tweet.new
    @tweets = Tweet.all.order("created_at DESC")
    @tweetsnumber = Tweet.where(user_id: current_user.id).length
    #@tweetTags = Tweet.find()where(tags: )

  end

  def create
    Tweet.create(tweet_params)

    # @text = params[:tweet][:text]
    # text = Tweet.new(text: @text)
    # text.save
    #Tweet.create(@text)
    # Tweet.create(tweet_params)
    # binding.pry
    redirect_to action: :index
  end

  def gTags(tweetId)
    tweetTags = tweetId
    tag = Tweet.find(tweetTags)
    #_by(tags: "id = tweetTags and tags: like '#%'")
    tag.tags
    #binding.pry

    return tag.tags
  end

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
