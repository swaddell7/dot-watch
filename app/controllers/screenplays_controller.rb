class ScreenplaysController < ApplicationController
 
  def index
    @screenplays = Screenplay.all
  end 

  def show
    @screenplay = Screenplay.find(params[:id])
  end

end