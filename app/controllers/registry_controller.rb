class RegistryController < ApplicationController
  def index
    @registries = Registry.all
  end

  def new
    @registry = Registry.new
  end

  def create
    p "this is the create method"
    p params
    @registry = Registry.new(params[:regsitry])
    p @registry
    @registry.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # private
  # def registry_params
  #   params.require(:user).permit(:username, :email, :password, :password_confirmation)
  # end
end
