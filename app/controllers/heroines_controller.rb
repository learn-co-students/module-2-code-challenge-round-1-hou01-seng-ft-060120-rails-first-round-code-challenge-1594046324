class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @hero = Heroine.find(params[:id])
  end

  def new 
    @hero = Heroine.new
  end 

  def create
    @hero = Heroine.create(power_params)

    if @hero.save
      redirect_to heroine_path(@hero)
    else
      render :new
    end
  end

  private

  def power_params
    params.require(:heroine).permit(:name, :super_name, power_ids_attributes: [:id, power_ids: []])
  end

end
