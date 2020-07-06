class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @hero = Heroine.find(params[:id])
  end

  def new
    @hero = Heroine.new
    @power = Power.all
  end

  def create
  
  end

  def power_params
    @power = Power.all
  end



end
