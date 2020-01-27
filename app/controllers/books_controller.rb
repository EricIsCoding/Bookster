class BooksController < ApplicationController
    before_action :authenticate_user!, except: :index

    def index 
        @books = Book.all
    end

    def show 
        @book = Book.find(params[:id])
    end

    def new
       @book = Book.new
    end

    def create
        @book = Book.create(book_params)
        if @book.persisted?
            @book.users << current_user
            redirect_to book_path(@book)
        else
            flash.now[:alert]  = @book.errors.full_messages
            render :new 
        end
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        book = Book.find(params[:id])
        book.update(helpers.update_params(book_params))
        redirect_to book_path(book)
    end

    def destroy
        Book.find(params[:id]).destroy
        redirect_to books_path
    end

    private 

    def book_params
        params.require(:book).permit(:name, :author, :page_count, :release_date, :synopsis, genre_ids: [])
    end
end
