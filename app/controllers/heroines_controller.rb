class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
  
  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  # Need to review on how to properly go about doing this :(
  def create
    @heroine = Heroine.new(
      name: heroine_params[:name],
      super_name: heroine_params[:super_name]
    )

    if @heroine.save
      HeroinePower.create(heroine_id: @heroine.id, power_id: heroine_params[:id])
      redirect_to heroine_path(@heroine)
    else
      render 'new'
    end
  end

  private

    def heroine_params
      params.require(:heroine).permit(:name, :super_name, :id)
    end
end
