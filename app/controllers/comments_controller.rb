class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @question.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
        format.html { redirect_to @question }
        format.js
      end
    else
      redirect_to @question, alert: "Something went wrong"
    end
  end

  def destroy
    @comment = @question.comments.find(params[:id])
    @comment.destroy
    redirect_to @question
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :parent_id)
  end
end
