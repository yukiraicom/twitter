class SearchesController < ApplicationController
  def search
    searchWord = search_params
    @users = User.where('name LIKE ?', "%#{searchWord}%")
  end

  def search_params
    params.require(:word)[:name]
  end
end
