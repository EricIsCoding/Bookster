class BooksController < ApplicationController
    before_action :authenticate_user!, except: :index

    def index 
        @books = Book.all
    end

    def new
       @book = Book.new
    end

    def create
        @book = Book.create(book_params)
        if @book.persisted?
            redirect_to book_path(@book)
        else
            render :new, flash[:alert]  = @book.errors.full_messages
        end
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private 

    def books_params
        params.require(:book).permit(:name, :author, :page_count, :release_date, :synopsis)
    end
end
