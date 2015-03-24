class CommentsController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new
  end

  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Your comment was successfully added"
      redirect_to question_path(@comment.question)
    else
      render :new
    end
  end

private
  def comment_params
    params.require(:comment).permit(:user, :answer)
  end
end