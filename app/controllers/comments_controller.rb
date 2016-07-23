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
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @post
    else
      render "new"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
