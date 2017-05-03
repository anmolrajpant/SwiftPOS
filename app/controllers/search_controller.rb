class SearchController < ApplicationController
  def show
  	@search_query = params[:search] [:search_query]
  	@results = Product.where ("name like ?" "%#{@search_query}")
  end
end
