class VotesController < ApplicationController
before_filter :token_verification, only: [:index, :destroy]

  def index
    render json: Vote.all.to_json
  end


  def index
  
  end

  def destroy
    Vote.find(id).destroy
    render json: "You are cold-hearted"
  end


end
