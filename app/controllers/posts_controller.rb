class PostsController < ApplicationController

  def index
    @posts = Post.all
    @user = User.all
  end

  def new
    @user = User.all
    @post = Post.new
  end

  def create
    @user = User.all
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to user_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end
  
  def edit
  end

  def update
  end

  def destroy
  end


  def post_params
    params.require(:post).permit(:place_image, :place_name, :text, :address, :latitude, :longitude)
  end

end
