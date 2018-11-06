class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @tweets = @tweets = Tweet.where(user_id: params[:id]).order("created_at DESC")
    @follow = Follow.new
    @associations = Follow.where(user_id: current_user.id)  #current_userのフォロー一覧取得
    @boolean = true
    @associations.each do |association|
      #binding.pry
      if @boolean == true then #フォローしているか確認（なければtrue)
        #binding.pry
        if association.followed_id. == @user.id then
          @boolean = "false"  
          #フォロー解除ボタン
          #binding.pry
        end
      end
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
