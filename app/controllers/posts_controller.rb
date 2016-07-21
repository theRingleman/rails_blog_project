class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:show, :edit, :update, :new, :create, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.author = current_user
    @post.save
    redirect_to post_path(@post)
  end

  def destroy
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
