class FirearmsController < ApplicationController
    before_action :set_firearm, only: [:show, :edit, :update, :destroy]
    
    def index
      @firearms = current_user.firearms
    end

    def show
    end

    def new
      @firearm = current_user.firearms.build
    end

    def edit

    end

    def create
        @firearm = current_user.firearms.build(firearm_params)
        if @firearm.save
            redirect_to user_firearm_path, notice: 'Your new firearm was created'
        else
            render :new
        end
      end

      def update
        if @firearm.update(firearm_params)
            redirect_to user_firearms_path, notice: 'Recipe was successfully updated'
        else
            render :edit
        end
      end

      def destroy
        @recipe.destroy
          redirect_to user_firearms_path, notice: 'Firearm was successfully destroy. A democrate loves you.'
      end

    private
    def set_firearm
        @firearm = Firearm.find_by(params[:user_id])
    end
    def firearm_params
      params.require(:firearm).permit(:name, :firearm_type, :description, :user_id)
    end
end
