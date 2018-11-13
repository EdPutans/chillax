class Api::V1::DestinationsController < ApplicationController

    def index
        @destinations = Destination.all
        render json: @destinations
    end

    def show
        @destination = Destination.find_by(id: params[:id])
        if @destination
            render json: @destination
        else
            render json: {error: "Destination was not found"}, status: 404
        end
    end


end
