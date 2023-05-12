class PostsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
 
    if @post.save
      redirect_to posts_path #redirects to index
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path, status: :see_other
  end

  private
  
  def require_login
    unless user_signed_in?
      flash[:error] = "You must sign in to add a post."
      redirect_to new_user_session_path
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
