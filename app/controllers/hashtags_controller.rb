class HashtagsController < ApplicationController
  def show
    @tag = Hashtag.find_by("tag = '#{params[:id]}'")
    @tags = Hashtag.where("tag = '#{params[:id]}'")

    #binding.pry
    def tweetText(tweetText)
      tweet = tweetText.sub(/#.*/, "")
      return tweet
    end
    
  end
  helper_method :tweetText
end

