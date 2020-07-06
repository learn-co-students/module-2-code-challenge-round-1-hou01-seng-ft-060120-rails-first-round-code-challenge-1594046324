class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def edit
    @power = Power.find(params[:id])
    @heroines = Heroine.all
  end

  def update
    # I should have looked on how to properly make the checkboxes in views and update... but it works-ishhh :D
    @power = Power.find(params[:id])
    @power.update(name: power_params[:name], description: power_params[:description])
    power_params[:heroine_ids].each do |heroine|
      HeroinePower.create(power_id: @power.id, heroine_id: heroine)
    end
    redirect_to power_path(@power)
  end

  private

    def power_params
      params.require(:power).permit(:name, :description, :heroine_ids => [])
    end
end
