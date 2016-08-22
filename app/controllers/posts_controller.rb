class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:edit, :update, :new, :create, :destroy]

  def index
    @posts = Post.all
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @posts}
    end
  end

  def show
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @post}
    end
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
    comment = Comment.create(content: params["post"]["comments_attributes"]["0"]["content"], user_id:  current_user.id)
    @post.update(post_params)
    @post.comments << comment
    @post.save
    redirect_to @post
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
      redirect_to @post
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
    params.require(:post).permit(:title, :content, tag_ids:[], tags_attributes: [:name], comments_attributes: [:content, :id])
  end
end
