class UsersController < ApplicationController
  def index
    @judges = User.where(role: "judge").sort_by { | judge | judge.username }
  end

  def new
    if logged_in?
      redirect_to root_path
    else
      @user = User.new
    end
  end

  def new_judge
    @user = User.new
    render 'new_judge'
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def create_judge
    @user = User.create(judge_params)
    @user.determine_role

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new_judge'
    end
  end

  def show
    if logged_in?
      @user = User.find_by(id: params[:id])
    else
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email).merge(role: "user")
  end

  def judge_params
    params.require(:user).permit(:username, :password, :token, :email)
  end
end
