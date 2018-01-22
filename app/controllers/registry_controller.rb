class RegistryController < ApplicationController
  def index
    @registries = Registry.all
  end

  def new
    @registry = Registry.new
  end

  def create
    @registry = Registry.new(registry_params)
    @registry.save
  end

  def show
    @registry = Registry.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def registry_params
    params.require(:registry).permit(:title, :description, :deadline, :user_id)
  end
end
