class FirearmsController < ApplicationController
  before_action :set_firearm, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @firearms = current_user.firearms.includes(:barrels, :outings).all
  end

  def show
    @firearm = Firearm.find_by(id: params[:id])
  end

  def new
    @firearm = current_user.firearms.build
    @firearm.barrels.build
    @firearm.outings.build
  end

  def edit; end

  def create
    @firearm = current_user.firearms.build(firearm_params)
    if @firearm.save
      redirect_to @firearm, notice: 'Your new firearm was created'
    else
      render :new
    end
  end

  def update
    if @firearm.update(firearm_params)
      redirect_to @firearm, notice: 'Firearm was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @firearm.destroy
    redirect_to firearms_path, notice: 'Firearm was successfully destroy. A democrate loves you.'
  end

  private

  def set_firearm
    @firearm = Firearm.find_by(id: params[:id])
  end

  def firearm_params
    params.require(:firearm).permit(:name, :firearm_type, :description, :user_id, barrels_attributes: [:caliber, :barrel_type, :length, :twist, :contour, :rifling])
  end
end


# For later, outings_attributes: [:shots_fired]
