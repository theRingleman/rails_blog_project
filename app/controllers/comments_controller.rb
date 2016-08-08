class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def create
    raise params.inspect
    @comment = Comment.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
