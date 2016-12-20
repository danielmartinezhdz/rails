class MenuController < ApplicationController
  
  def index
  	@menus = Menu.all
  end

  def show
  	@menus = Menu.find(params[:id])
  end
end
