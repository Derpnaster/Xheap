class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
  def show
    @user = User.find(current_user)
    @question_count = Question.count_by_sql("select count(*) from questions where user_id =#{current_user.id}")

    @question_recent = Question.find_by_sql("select* from questions where user_id = #{current_user.id}")
    end
  private
  def user_params
    params.require(:user).permit( :username ,:email, :password, :password_confirmation)
  end
  def index

  end
end

