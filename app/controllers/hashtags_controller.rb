class HashtagsController < ApplicationController
  def show
    @tag = Hashtag.find_by("tag = '#{params[:id]}'")
  end
end

