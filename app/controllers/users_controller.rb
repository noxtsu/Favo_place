class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post = @user.posts
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(post_params)
      redirect_to user_path(@user.id)
    else
      render "edit"
    end
  end

  def unsubscribe
    @user = current_user
  end

  def withdraw
    #@user = current_user
    #@user.update(post_params)
    current_user.update(is_active: true)
    reset_session
    redirect_to root_path
  end

  private

  def post_params
    params.require(:user).permit(:name, :user_image, :is_active, :email, :password)
  end

end
