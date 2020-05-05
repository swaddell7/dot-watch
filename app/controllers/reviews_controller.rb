class ReviewsController < ApplicationController
  
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    # @screenplays = Screenplay.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)

    if @review.valid?
      @review.save
      redirect_to @review
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    
    if @review.update(review_params)
      redirect_to @review
    else
      render :edit
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :description, :rating, :screenplay_id, :user_id)
  end

end