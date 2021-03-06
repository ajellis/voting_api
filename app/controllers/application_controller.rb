class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def token_verification
    voter = Voter.find_by(access_token: params[:access_token])
    unless voter
      render json: "FAILURE!!! ACCESS DENIED SCRUB!!"
    end
  end
end
