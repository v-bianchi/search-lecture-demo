class MoviesController < ApplicationController
  def index
    if params[:query].present?
      @movies_and_series = PgSearch.multisearch(params[:query])
    else
      @movies_and_series = [] # Show nothing
    end
  end
end
