class HashtagsController < ApplicationController
  def show
    @tag = Hashtag.where("tag = params[:id]")
    #binding.pry
  end
end
