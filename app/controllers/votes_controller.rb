class VotesController < ApplicationController
  def index
    render json: Vote.all.to_json
  end
end
