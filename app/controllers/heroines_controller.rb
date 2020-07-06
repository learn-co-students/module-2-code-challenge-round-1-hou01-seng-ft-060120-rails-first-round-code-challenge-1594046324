class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show]
 
  def index
    @heroines = Heroine.all
  end

  def show
  
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render 'new'
    end
    
  end

  private
  def find_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end
end
