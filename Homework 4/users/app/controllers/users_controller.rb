class UsersController < ApplicationController
  http_basic_authenticate_with name: '123', password: '321', only: :destroy

  def index
    @users = User.all
  end

  def show
    user_params_find
  end

  def new
    @user = User.new
  end

  def edit
    user_params_find
  end

  def create
    @user = User.new(user_params_req)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    user_params_find

    if @user.update(user_params_req)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    user_params_find
    @user.destroy

    redirect_to users_path
  end

  private

  def user_params_req
    params.require(:user).permit(:name, :age, :email)
  end

  def user_params_find
    @user = User.find(params[:id])
  end
end
