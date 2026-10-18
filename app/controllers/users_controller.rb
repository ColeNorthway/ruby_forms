class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to @user
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.expect(user: [ :password, :username, :email ])
  end
end
