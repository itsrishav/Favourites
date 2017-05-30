module CommonConcern
  extend ActiveSupport::Concern

  def parsing_response_data(response)
  	if response["errorcode"].present?
  		nil
  	else
  		{
  			movie_title: 	response["show_title"],
  			description: 	response["summary"],
  			movie_poster: response["poster"]
  		}
  	end
  end
end