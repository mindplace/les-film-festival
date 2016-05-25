class UsersController < ApplicationController
  def new
    @user = User.new
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

    if @user.token
      if @user.token == User::JUDGE_TOKEN
        @user.role = "judge"
      elsif @user.token == User::ADMIN_TOKEN
        @user.role = "admin"
      else
        @user.errors[:token].push("Incorrect token")
      end
    end

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password).merge(role: "user")
  end

  def judge_params
    params.require(:user).permit(:username, :password, :token)
  end
end
