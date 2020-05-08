class ScreenplaysController < ApplicationController
  before_action :authorized
 
  def index
    @screenplays = Screenplay.all
  end

  def filter
    @genre = params[:screenplay][:genre_ids]
    @screenplays = Screenplay.filter(@genre)
    flash[:filter_message] = Screenplay.filter_message(@genre)
    render :index
  end

  def show
    @screenplay = Screenplay.find(params[:id])
    @review = Review.new
  end

end