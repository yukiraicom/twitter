class FavoritesController < ApplicationController
  def create
    tweetId = params.require(:id).to_i
    Favorite.create(user_id: current_user.id, tweet_id: tweetId)
  end

  def destroy
    tweetId = params.require(:id).to_i
    favorite = Favorite.find_by(user_id: current_user.id, tweet_id: tweetId)
    favorite.destroy if favorite
  end
end
