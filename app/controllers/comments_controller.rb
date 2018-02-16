class CommentsController < ApplicationController
  def create
    @comment = current_admin.comments.build(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
