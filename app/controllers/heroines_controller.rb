class HeroinesController < ApplicationController
  before_action :find_heroine, only:[:edit,:update,:show]

  def index
    @heroines = Heroine.all
  end

  def new 
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.valid?
      @heroine.save
    else 
      redirect_to heroines_path(@heroines)
    end
  end

  def show
  end
   
  def edit
  end

  def update
  end 

  private
  # binding.pry
  def heroine_params
    params_require(:doctor).permit(:name,supername:[:id])
  end
  
  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
