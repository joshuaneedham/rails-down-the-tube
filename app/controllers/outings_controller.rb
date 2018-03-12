class OutingsController < ApplicationController
  before_action :set_outing, only: %i[show edit new index update destroy]
  before_action :authenticate_user!

  def index
    @outings = Outing.all
  end

  def show
    @barrel = Outing.find_by(id: params[:id])
  end

  def new
    @outing = Outing.new
  end

  def create
    @outing = Outing.new(outing_params)
    if @outing.save
      redirect_to @outing, notice: 'Your outing was created'
    else
      render :new
    end
  end

  def update
    if @outing.update(outing_params)
      redirect_to @outing, notice: 'Your outing has been updated'
    else
      render :edit
    end
  end

  def destroy
    @outing.destroy
    redirect_to outings_path, notice: 'The outing has been deleted'
  end

  private

  def set_outing
    @outing = Outing.find_by(id: params[:id])
  end

  def outing_params
    params.require(:outing).permit(:shots_fired, :date)
  end
end
