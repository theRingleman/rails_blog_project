class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:edit, :update, :new, :create, :destroy]
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.create(post_params)
    @post.author = current_user
    authorize @post
    if @post.save
      redirect_to post_path(@post)
    else
      render "new"
    end
  end

  def destroy
    authorize @post
    @post.delete
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
