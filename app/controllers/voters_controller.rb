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
     if voter.update(voter_params)
       render json: voter
     else
       render json: "That ain't right. "
     end
   end

  private

  def voter_params
    params.require(:voter).permit(:name, :party)
  end

end
