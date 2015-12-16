class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.all.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

      if @question.save
        # flash[:notice] = "Success!"
        redirect_to @question
      else
        # flash.now[:notice] = "Title must be at least 40 characters!" if @question.title.length < 40
        # flash.now[:notice] = "Description must be at least 150 characters!" if @question.description.length < 150
        render :new
      end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      redirect_to @question
    else
      render :edit
    end
  end

  def destroy
    @questions = Question.all.order(created_at: :desc)
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end

end
