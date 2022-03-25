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
    @user = current_user
  end

  def withdraw
    @user = current_user
    @user.update(post_params)
    reset_session
    redirect_to root_path
  end

  private

  def post_params
    params.require(:user).permit(:name, :user_image, :is_active, :email, :password)
  end

end
