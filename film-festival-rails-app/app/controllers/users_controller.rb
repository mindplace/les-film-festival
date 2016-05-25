class UsersController < ApplicationController
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
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email).merge(role: "user")
  end

  def judge_params
    params.require(:user).permit(:username, :password, :token, :email)
  end
end
