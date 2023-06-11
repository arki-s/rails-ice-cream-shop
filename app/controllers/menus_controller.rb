class MenusController < ApplicationController
  before_action :set_menu, only: %i[show destroy]

  def index
    @menus = Menu.all
  end

  def show
  end

  def new
    @menu = Menu.new
    @review = Review.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menu_path(@menu)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @menu.destroy
    redirect_to menus_path, status: :see_other
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:name, :comment, :ice_cream_id, :topping_id, :container_id, :photo)
  end
end
