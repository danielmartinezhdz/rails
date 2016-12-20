class WelcomeController < ApplicationController
  def index
  end

  def contacto
  	@menu = Menu.all
  end
end
