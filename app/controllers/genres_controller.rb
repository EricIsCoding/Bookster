class GenresController < ApplicationController
    before_action :authenticate_user!, except: :index
    
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
        byebug
        @genre = Genre.create(genre_params)
        if @genre.persisted?
            :notice = "Genre created sucessfully."
            redirect_to genre_path(@genre)
        else
            render :new 
        end
    end

    def edit
        @genre = current_genre
    end

    def update
        genre = current_genre
        genre.update(helpers.update_params(genre_params))
        redirect_to genre_path(@genre)
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
        params.require(:genre).permit(:name, :description, :book_ids)
    end
end
