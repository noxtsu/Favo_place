class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post = @user.posts
  end

  def edit
    @user = current_user
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end

  private

  def post_params
    params.require(:user).permit(:name, :user_image, :is_active, :email, :password)
  end

end
