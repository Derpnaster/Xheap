class QuestionsController < ApplicationController
  before_filter :authorize, only: [:create]
  def show
    @question = Question.find(params[:id])
@question_user = User.find(@question.user_id)
    @answers = @question.answers.order(created_at: :desc)
  end

  def create
    Question.create(question_params)
    redirect_to root_path
  end

  def index

    @questions = Question.order(created_at: :desc)
  end

  private

  def question_params
    params.require(:question).permit(:user_id,:email,:username, :body)
  end

end
