class ScreenplaysController < ApplicationController
  before_action :authorized
 
  def index
    @screenplays = Screenplay.all
  end

  def filter
    @genre = params[:screenplay][:genre_ids]
    @screenplays = Screenplay.filter(@genre)

    render :index
  end

  def show
    @screenplay = Screenplay.find(params[:id])
    @review = Review.new
  end

end