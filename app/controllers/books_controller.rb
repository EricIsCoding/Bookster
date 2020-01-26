class BooksController < ApplicationController
    before_action :authenticate_user!, except: :index

    def index 
        @books = Book.all
    end

    def new
       @book = Book.new
    end

    def create

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
