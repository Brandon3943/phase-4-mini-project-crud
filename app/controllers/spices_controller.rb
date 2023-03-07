class SpicesController < ApplicationController

    def index
        render json: Spice.all
    end

    def create
        render json: Spice.create(spice_params), status: 201
    end

    def update
        spice = Spice.find(params[:id])
        spice.update(spice_params)
        render json: spice
    end

    def destroy
        Spice.find(params[:id]).destroy
        204
    end




    private


    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
