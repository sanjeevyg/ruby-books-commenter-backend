class CommentsController < ApplicationController

    def index 
        @comments = Comment.all
        render json: @comments, includes: [:book]
    end

    def show
        @comment = Comment.find(params[:id])
        render json: @comment, include: [:book]
    end

    def create 
        if @comment = Comment.create(
            commenter: params[:commenter],
            body: params[:body],
            book_id: params[:book_id]
        )
        render json: @comment
        else 
            render json: @comment.errors
        end
    end

    def update 
        @comment = Comment.find(params[:id])
        if @comment.update(
            commente∏: params[:commenter],
            body: params[:body],
            book_id: params[:book_id]
        ) 
            render json: @comment
        else
            render json: @comment.errors 
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        render json: {message: "comment deleted!"}
    end
end
