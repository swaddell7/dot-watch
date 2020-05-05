class SessionsController < ApplicationController

  def new 

  end 

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else 
      flash[:login_error] = "Invalid Login Details"
      render :new
    end 
  end 

  def delete

  end 
  
end