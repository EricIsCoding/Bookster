class ReviewsController < ApplicationController
    before_action :authenticate_user!

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
        if !helpers.record_owner?(@review)
            flash[:alert] = "Cannot Access This Review's Edit Page."
            redirect_to books_path
        end
    end

    def update
        review = Review.find(params[:id])
        review.update(helpers.update_params(review_params))
        redirect_to book_path(review.book)
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        redirect_to book_path(review.book)
    end

    private

    def review_params
        params.require(:review).permit(:score, :content, :book_id, :user_id)
    end
    
end
