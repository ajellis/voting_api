class CandidatesController < ApplicationController


  def index
    render json: Candidate.all.to_json
  end

  def show
    id = params[:id] #params sets what it should do whaen the user puts in something (they put in id = x and it finds the one with and id of x)
    render json: Candidate.find(id).to_json
    #find is a method built into Active Record that finds whatever you tell it to
  end


  # def update
  #   authenticate_or_request_with_http_token do |token, options|
  #   # authenticate user...
  #
  #   end
  # end

end
