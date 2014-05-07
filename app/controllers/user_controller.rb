class UserController < ApplicationController

  def index
    @users = Users.all
  end

  def show
    @user = Users.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @User = User.find(params[:id])
  end

  def create
    @user = User.new(project_params)

    if @user.save
      redirect_to users_url
    else
      render :new
    end
  end

  def update
    @user = Users.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = Users.find(params[:id])
    @user.destroy
    redirect_to user_path
  end

  private
  def user_params
    params.require(:user).permit (:email, :crypted_password, :salt, :created_at, :updated_at)
  end

end




end
