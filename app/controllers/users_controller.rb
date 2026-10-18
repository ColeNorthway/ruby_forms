class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    def create
      @instance = User.new(instance_params)
      if @instance.save
        redirect_to @instance
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def instance_params
    params.expect(user: [ :password, :username, :email ])
  end
end
