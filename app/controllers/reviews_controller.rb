class ReviewsController < ApplicationController
  before_action :authorized
  before_action :find_review, only: [:show, :edit, :update, :like]
  
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def show
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.valid?
      @review.save
      flash[:message] = "Review successfully created!"
      flash[:gif] = @review.random_gif
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

  def like
    @like = Like.find_by(user_id: session[:user_id], review_id: @review.id)
    if @like
      flash[:like_error] = "You've already liked this review!"
      redirect_to @review
    else #@like.user_id != session[:user_id]
      Like.create(user_id: session[:user_id], review_id: @review.id)
      redirect_to @review
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