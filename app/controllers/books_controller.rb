class BooksController < ApplicationController
    def index 
        @books = Book.all
        render json: @books
    end

    def show
        @book = Book.find(params[:id])
        render json: @book, include: [:comments]
    end

    def create
        @book = Book.new(
            title: params[:title],
            genre: params[:genre]
        )

        if @book.valid? 
            @book.save
        else 
            render json: @book.errors
        end
        render json: @book
    end
    
    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        render json: {message: 'book is deleted'}
    end
    
    def update
        @book = Book.find(params[:id])
        if @book.update(
            title: params[:title],
            genre: params[:genre]
        )
        render json: @book
        else 
            render json: @book.errors
        end
    end
end
