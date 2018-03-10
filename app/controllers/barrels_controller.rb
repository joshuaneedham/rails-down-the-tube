class BarrelsController < ApplicationController
  before_action :set_barrel, only: %i[show edit new update destroy index]
  before_action :authenticate_user!

  def index
    @barrels = Barrel.all
  end

  def show
    @barrel = Barrel.find_by(id: params[:id])
  end

  def new
    @barrel = Barrel.new
  end

  def create
    @barrel = Barrel.create(barrel_params)
    if @barrel.save
      redirect_to @barrel, notice: 'Barrel was added'
    else
      render :new
    end
  end

  def update
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
    params.require(:barrel).permit(:caliber, :barrel_type, :length, :contour, :rifling)
  end
end