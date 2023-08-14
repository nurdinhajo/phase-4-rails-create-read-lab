class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      redirect_to @plant, notice: 'Plant was successfully created.'
    else
      render :new
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image, :price)
  end
end
