class HomeController < ApplicationController
  include CommonConcern


  def index

  end

  def new
    movie_name = allowed_params[:search]
    response = HTTParty.get("http://netflixroulette.net/api/api.php?title=#{movie_name}")
    @data = parsing_response_data(response)
  end

  private

  def allowed_params
    params.permit(:search)
  end
end