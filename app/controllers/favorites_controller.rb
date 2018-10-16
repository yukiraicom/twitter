class FavoritesController < ApplicationController
  def create
    tweetId = params.require(:id).to_i
    Favorite.create(user_id: current_user.id, tweet_id: tweetId)
    # //カスタムデータ属性でtweet.idを引っ張る
  end
end
  