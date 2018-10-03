module TweetsHelper
  def getFavorite(tweet)
    favo = Favorite.find_by(user_id: current_user.id, tweet_id: tweet.id)
  end

  # def returnA(tweet)
  #   return a 
  # end
end
