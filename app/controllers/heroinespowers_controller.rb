class HeroinesPowersController < ApplicationController
    before_action :set_hp, only: [:show, :edit]
    def index
      @heroines = Heroine.all
    end
  
    def show
    end
  
    def new
      @heroinepower = HeroinePower.new
    end
  
    def create
      @heroinepower = HeroinePower.new(hp_params)
      @heroinepower.save
    end
  
    private
  
    def hp_params
      params.require(:heroinepower).permit(:heroine_id, :power_id)
    end
  
    def set_hp
      @heroine = Heroine.find(params[:id])
    end
  end