class GenresController < ApplicationController
    def index 
        @genres = Genre.all
    end

    def show 
        @genre = current_genre
    end

    def new
       @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params)

    end

    def edit
        @genre = current_genre
    end

    def update
        current_genre
    end

    def destroy
        current_genre.destroy
        redirect_to genres_path
    end

    private 

    def current_genre
        Genre.find(params[:id]) 
    end

    def genre_params
        params.require(:genre).permit(:name, :description)
    end
end
