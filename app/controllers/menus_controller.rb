class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
    else
    end
  end

  def show 
    @menu = Menu.find(menu_id)
  end

  def edit
    @menu = Menu.find(menu_id)
  end

  def update
    @menu = Menu.find(menu_id)

    if @menu.update(menu_params)
    else
    end
  end

private

  def menu_params
    params.require(:menu).permit(:id)
  end

  def menu_id
    params[:id]
  end
end
