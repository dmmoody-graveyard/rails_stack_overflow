class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Your question was successfully submitted."
      redirect_to questions_path(@question)
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = 'Question was successfully updated'
      redirect_to question_path(@question)
    else
      render :edit
    end
  end    

private
  def question_params
    params.require(:question).permit(:user, :inquiry, :post)
  end
end