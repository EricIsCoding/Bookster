class BooksController < ApplicationController
    before_action :authenticate_user!, except: :index

    def index 
        @books = Book.all
    end

    def show 
        @book = current_book
        @genres = @book.genres
        @reviews = @book.reviews
        @review = Review.new
    end

    def new
       @book = Book.new
    end

    def create
        @book = Book.create(book_params)
        if @book.persisted?
            flash[:notice] = "Book created sucessfully."
            redirect_to book_path(@book)
        else
            render :new 
        end
    end

    def edit
        @book = current_book
    end

    def update
        book = current_book
        book.update(helpers.update_params(book_params))
        redirect_to book_path(book)
    end

    def destroy
        book = current_book
        book.destroy
        flash[:notice] = "#{book.name} was deleted."
        redirect_to books_path
    end

    private 

    def current_book
        Book.find(params[:id])
    end

    def book_params
        params.require(:book).permit(:name, :author, :page_count, :release_date, :synopsis, :user_id, genre_ids: [])
    end
end
