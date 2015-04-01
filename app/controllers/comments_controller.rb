class CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def new
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new
  end

  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Your comment was successfully added"
      respond_to do |format|
        format.html { redirect_to question_path(@comment.question) }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @comment = @question.comments.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    @comment = @question.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to question_path(@question)
      flash[:notice] = "Comment successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @comment = @question.comments.find(params[:id])
    @comment.destroy
    redirect_to question_path(@question)
    flash[:notice] = "Comment successfully deleted"
  end

private
  def comment_params
    params.require(:comment).permit(:answer, :user_id)
  end
end