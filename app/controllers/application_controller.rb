class ApplicationController < ActionController::Base

  def homepage
    #currently loads a random user, needs to change when sessions are introduced
    @user = User.find_by(id: session[:user_id])
    @top_three = Screenplay.screenplays_by_rating.first(3)
    @popular_review = @user.most_popular_review
  end
end
