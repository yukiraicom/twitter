class SearchesController < ApplicationController
  def index
  end
  def search
    searchWord = search_params
  end

  def search_params
    params.require(:word)[:name]
  end
end
