class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show, :edit]
  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
   @heroine = Heroine.new
   
  end

 

  def create
    @heroine = Heroine.new(heroine_params)
    #@hp = HeroinePowers.new(hp_params)
    if @heroine.errors.any?
      redirect_to heroines_path
    else
      @heroine.save
      #@hp.save
      redirect_to @heroine
    end
    
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

  def hp_params
    params.require(:heroinepower).permit(:heroine_id, :power_id)
  end
  
  def set_heroine
    @heroine = Heroine.find(params[:id])
  end
end
