class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

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
  end

  def destroy
    @post.delete
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
