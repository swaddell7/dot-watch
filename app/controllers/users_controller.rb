class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update]
  
    def index
        @users = User.all
    end

    def show
      
    end

    def new
      @user = User.new
    end 

    def create
      @user = User.new(user_params)

      if @user.valid?
        @user.save
        session[:user_id] = @user.id
        redirect_to @user
      else 
        render :new
      end
    end 

    def edit

    end 

    def update
      if @user.update_attributes(user_params(:name, :username, :bio, :age, :location))
        @user.save
        redirect_to @user
      else 
        render :edit
      end 
    end 

    private

    def find_user
      @user = User.find(params[:id])
    end 

    def user_params(*args)
      params.require(:user).permit(:name, :username, :bio, :age, :location, :password, :password_confirmation)
    end 
end