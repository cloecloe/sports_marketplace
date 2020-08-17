class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      render :new
    end
  end

  def update
  end

  def show
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :description, :price)
  end
end
