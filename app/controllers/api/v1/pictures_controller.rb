class Api::V1::PicturesController < ApplicationController

    def index
        @pictures = Picture.all
        render json: @pictures
    end

    def show
        @picture = Picture.find_by(id: params[:id])
        if @picture
            render json: @picture
        else
            render json: {error: "Picture was not found"}, status: 404
        end
    end


end
