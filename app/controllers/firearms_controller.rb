class FirearmsController < ApplicationController
  before_action :set_firearm, only: %i[show edit update destroy]
  before_action :current_user
  before_action :authenticate_user!

  def index
    @firearms = Firearm.all
  end

  def show
    @firearm = Firearm.find_by(id: params[:id])
  end

  def new
    @firearm = Firearm.new
  end

  def edit; end

  def create
    @firearm = Firearm.create(firearm_params)
    if @firearm.save
      redirect_to @firearm, notice: 'Your new firearm was created'
    else
      render :new
    end
    end

  def update
    if @firearm.update(firearm_params)
      redirect_to @firearm
    else
      render :edit
    end
  end

  def destroy
    @firearm.destroy
    redirect_to firearms_path, notice: 'Firearm was successfully destroy. A democrat loves you.'
  end

  private

  def set_firearm
    @firearm = Firearm.find_by(id: params[:id])
  end

  def firearm_params
    params.require(:firearm).permit(:name, :firearm_type, :description, :user_id)
  end
end
