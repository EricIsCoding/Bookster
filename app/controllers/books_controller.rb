class BooksController < ApplicationController
    before_action :authenticate_user!, except: :index
    
    def index 
        @books = Book.all
    end
end
