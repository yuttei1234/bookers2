class UsersController < ApplicationController
  
  def index
    @user = User.find(current_user.id)
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])    
    @book = Book.new
  end
  
  def edit
    @user = User.find(params[:id])
    if @user == current_user
     render :edit
    else
      redirect_to users_path
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id), notice: "You have updated user successfully."
    else
      render :edit
    end
  end
  
  private
  def user_params
  params.require(:name).permit(:name, :introduction, :profile_image)
  end
  
end
