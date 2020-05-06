class ApplicationController < ActionController::Base
  before_action :authorized, only: :homepage
  helper_method :logged_in?
  helper_method :current_user

  def homepage
    @user = User.find_by(id: session[:user_id])
    @top_three = Screenplay.screenplays_by_rating.first(3)
    @popular_review = @user.most_popular_review
  end

  def current_user
    if session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
    end
  end
  
  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end
end
