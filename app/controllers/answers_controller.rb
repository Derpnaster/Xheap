class AnswersController < ApplicationController
  before_filter :authorize, only: [:create]
  def create
    question = Question.find(params[:answer][:question_id])
    Answer.create(answer_params)
    question.answers.create(answer_params)
    redirect_to question
  end

  private

  def answer_params
    params.require(:answer).permit(:username, :user_id, :email, :body)
  end

end
