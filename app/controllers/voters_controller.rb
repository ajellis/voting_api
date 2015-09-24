class VotersController < ApplicationController
  before_filter :token_verification, only: [:show, :update]

  def index
    render json: Voter.all.to_json
  end

  def show
  voter = Voter.find(params[:id])
  render json: voter
  end

  def update
    voter = Voter.find(params[:id])
     if voter.update(name: params[:name], party: params[:party])
       render json: voter
     else
       render json: "That ain't right. "
     end
   end

end
