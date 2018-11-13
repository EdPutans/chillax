class Api::V1::UserDestinationsController < ApplicationController


    def index
        @userDestinations = UserDestination.all
        render json: @userDestinations
    end

    def show
        @userDestination = UserDestination.find_by(id: params[:id])
        if @userDestination
            render json: @userDestination
        else
            render json: {error: "userDestination was not found"}, status: 404
        end
    end

    def create
        @userDestination = UserDestination.new(user_destination_params)
        if @userDestination.save
            render json: @userDestination
        else
            render json: {error: "Unable to create this wishlist item"}, status: 400
        end
    end

    def update
        @userDestination = UserDestination.find_by(id: params[:id])
        @userDestination.update(user_destination_params)
        if userDestination.save
            render json: @userDestination, status: 200
        else
            render json: {errors: @user_destination.errors.full_messages}, status: 422
        end
    end 

    def destroy
        @userDestination = UserDestination.find_by(id: params[:id])
        if @userDestination
            @userDestination.destroy
            render json: {message: "Wishlist item successfully erradicated!"}
        else
            render json: {error: "Wishlist item not found"}, status: 404
        end
    end

    private

    def user_destination_params
        params.require(:user_destination).permit(:user_id, :destination_id)
    end


end
