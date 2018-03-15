# Controller for Barrels
class BarrelsController < ApplicationController
  before_action :set_barrel, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @barrels = Barrel.all
    @barrels = current_user.barrels
  end

  def show
    @barrel = Barrel.find_by(id: params[:id])
  end

  def new
    @barrel = current_user.barrels.build

  end

  def edit; end

  def create
    @barrel = current_user.barrels.build(barrel_params)
    if @barrel.save
      redirect_to @barrel, notice: 'Barrel was added'
    else
      render :new
    end
  end


  def update
    @barrel.update(barrel_params)
    if @barrel.update(barrel_params)
      redirect_to @barrel, notice: 'Barrel has been updated'
    else
      render :edit
    end
  end

  def destroy
    @barrel.destroy
    redirect_to barrels_path, notice: 'Your barrel was deleted'
  end

  private

  def set_barrel
    @barrel = Barrel.find_by(id: params[:id])
  end

  def barrel_params
    params.require(:barrel).permit(:caliber, :barrel_type, :length, :contour, :rifling, :firearm_id)
  end
end
