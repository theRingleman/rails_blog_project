class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    @post.comments << @comment
    render json: @post, status: 201
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
