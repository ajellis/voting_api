class VotersController < ApplicationController
  def index
    render json: Voter.all.to_json
  end
end
