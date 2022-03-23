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
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_path(current_user)
  end


  def post_params
    params.require(:post).permit(:place_image, :place_name, :text, :address, :latitude, :longitude)
  end

end
