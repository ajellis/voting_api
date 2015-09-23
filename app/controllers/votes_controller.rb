class VotesController < ApplicationController
  def index
    render json: Vote.all.to_json
  end


  # def create
  #   c = Vote.new(name: params[:name], salary: params[:salary])
  #   if c.save
  #     render json: c.to_json
  #   else
  #     render json: c.errors
  #   end
  # end
  #
  # def destroy id = params[:id]
  #   Employee.find(id).destroy
  #   render json: "You are cold-hearted"
  # end


end
