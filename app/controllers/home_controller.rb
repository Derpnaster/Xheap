class HomeController < ApplicationController
  def index
    @questions = Question.last(10)
  end

  def about
  end


end