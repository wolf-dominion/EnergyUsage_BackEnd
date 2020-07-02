class FavoritemapsController < ApplicationController

    before_action :authenticate, only: [:index, :create]
    # before_action :set_fm, only: [update, :destroy]
    
    def index
        # @fms = Favoritemap.all
        # render json: @fms
        @fms = Favoritemap.where(user_id: @user_id)
        render json: @fms
    end

    def show
        @fms = Favoritemap.where(user_id: params[:id])
        render json: @fms
    end

    def create
        @fm = Favoritemap.create(fm_params)
        render json: @fm
    end

    # def update
    #     @fm.update(fm_params)
    #     render json: @fm
    # end
    
    def destroy
        @fm = Favoritemap.find(params[:id])
        @fm.destroy
    end

    private

    def set_fm
        @fm = Favoritemap.find(params[:id])
      end

    def fm_params
        params.require(:favoritemap).permit(:zip, :avg, :min, :max, :energyInfo).merge(user_id: @user_id)
    end

end
