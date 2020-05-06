class ScreenplaysController < ApplicationController
  before_action :authorized
 
  def index
    @screenplays = Screenplay.all
  end 

  def show
    @screenplay = Screenplay.find(params[:id])
    @review = Review.new
  end

end