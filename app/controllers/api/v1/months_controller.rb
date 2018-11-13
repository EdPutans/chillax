class Api::V1::MonthsController < ApplicationController

    def index
        @months = Month.all
        render json: @months
    end

    def show
        @month = Month.find_by(id: params[:id])
        if @month
            render json: @month
        else
            render json: {error: "Month was not found"}, status: 404
        end
    end
    
end
