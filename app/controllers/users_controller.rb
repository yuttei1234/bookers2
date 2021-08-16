class UsersController < ApplicationController
  
  def index
    @user = User.find(current_user.id)
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])    
    @book = Book.new
    @books = @user.books
  end
  
  def edit
  end
  
  def update
  end
  
  private
  def user_params
  params.require(:name).permit(:name, :introduction, :profile_image)
  end
  
end
