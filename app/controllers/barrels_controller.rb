class BarrelsController < ApplicationController
before_action :set_barrel, only: [:show, :edit, :update, :destroy]


def index
@barrels = Barrel.all
end

def show
@barrel = Barrel.find_by(id: params[:id])
end


def new
@barrel = Barrel.new
end


def edit
end


def create
@barrel = Barrel.new(barrel_params)
if @barrel.save
redirect_to @barrel, notice: 'Barrel was successfully created.'
else
render :new
end
end


def update
if @barrel.update(barrel_params)
redirect_to @barrel, notice: 'Barrel was successfully updated.'
else
render :edit
end
end


def destroy
@barrel.destroy
redirect_to barrels_url, notice: 'Barrel was successfully destroyed.'
end

private
# Use callbacks to share common setup or constraints between actions.
def set_barrel
@barrel = Barrel.find_by(id: params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
# Strong Params
def barrel_params
params.require(:barrel).permit(:caliber, :barrel_type, :length, :twist, :contour, :rifling
end
end