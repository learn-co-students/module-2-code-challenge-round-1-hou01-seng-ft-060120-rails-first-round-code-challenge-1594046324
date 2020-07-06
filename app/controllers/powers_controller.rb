class PowersController < ApplicationController

  def index
    @powers = Power.all
  end

  def new
    @power = Power.new

  end

  def create
    @power = Power.new(heroine_params)

    if @power.valid?
      @power.save
    else 
      redirect_to powers_path(@powers)

  end
end
end



