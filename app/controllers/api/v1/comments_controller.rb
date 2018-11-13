class Api::V1::CommentsController < ApplicationController
    

    def index
        @comments = Comment.all
        render json: @comments
    end

    def show
        @comment = Comment.find_by(id: params[:id])
        if @comment
            render json: @comment
        else
            render json: {error: "Comment was not found"}, status: 404
        end
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            render json: @comment
        else
            render json: {error: "Unable to create this comment"}, status: 400
        end
    end

    def update
        @comment = Comment.find_by(id: params[:id])
        @comment.update(comment_params)
        if comment.save
            render json: @comment, status: 200
        else
            render json: {errors: @comment.errors.full_messages}, status: 422
        end
    end 

    def destroy
        @comment = Comment.find_by(id: params[:id])
        if @comment
            @comment.destroy
            render json: {message: "Comment successfully erradicated!"}
        else
            render json: {error: "Comment not found"}, status: 404
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :user_id, :destination_id)
    end


end
