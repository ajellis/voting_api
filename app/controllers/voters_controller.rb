class VotersController < ApplicationController
  def index
    render json: Voter.all.to_json
  end

  # def show
  #   voter = Voter.find[params[:id]]
  #   if voter.auth_token = param[]
  #     render json: Voter.all.to_json
  #   else
  #     render json: "Access Denied"
  #   end
  # end
end
