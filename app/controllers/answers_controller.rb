class AnswersController < ApplicationController

  def index
    if params[:question_id]
      question = Question.find(params[:question_id])
      @answers = question.answers.order(:created_at)
    end
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question
      if @answer.save
        # flash[:notice] = "Success!"
        redirect_to @question
      else
        # flash.now[:notice] = "Title must be at least 40 characters!" if @question.title.length < 40
        # flash.now[:notice] = "Description must be at least 150 characters!" if @question.description.length < 150
        render :new
      end
  end

  private

  def answer_params
    params.require(:answer).permit(:description)
  end

end
