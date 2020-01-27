class ReviewsController < ApplicationController

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        if @review.persisted?
            redirect_to book_path(@review.book)
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update

    end

    def destroy

    end

    private

    def review_params
        params.require(:review).permit(:score, :content, :book_id, :user_id)
    end
    
end
