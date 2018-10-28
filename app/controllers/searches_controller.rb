class SearchesController < ApplicationController
  def index
  end
  def search
    searchWord = search_params
    User.where('name LIKE ?', "%#{searchWord}%")
    binding.pry
    redirect_to action: 'index'
  end

  def search_params
    params.require(:word)[:name]
  end
end
