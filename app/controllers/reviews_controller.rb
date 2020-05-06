class ReviewsController < ApplicationController
  before_action :authorized
  before_action :find_review, only: [:show, :edit, :update]
  
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    # @screenplays = Screenplay.all
  end

  def show
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.valid?
      @review.save
      redirect_to @review
    else
      render :new
    end
  end

  def edit
    if current_user != @review.user
      redirect_to @review
    end
  end

  def update
    if @review.update(review_params)
      redirect_to @review
    else
      render :edit
    end
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :description, :rating, :screenplay_title)
  end

end