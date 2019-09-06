class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end 

  def destroy
    user = User.find(params[:id])
    user.delete
    render json: user
  end
  
  def create
    user = User.create(
      name: params[:name], 
      wins: params[:wins]
    )
   render json: user 
  end
  
  def update
      user = User.find(params[:id])
      user.update(      
        name: params[:name], 
        wins: params[:wins])
    render json: user  
  end
end
