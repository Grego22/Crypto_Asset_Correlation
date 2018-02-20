class CommentsController < ApplicationController
  before_action :find_post
  def create
    @comment = @post.comments.create(comment_params)
    @comment.admin_id =current_admin.id
    @comment.save

    if @comment.save
      redirect_to posts_path(@post)
    else
      render 'new'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
