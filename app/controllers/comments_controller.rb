class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_comments_path
    else
      render "new"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
