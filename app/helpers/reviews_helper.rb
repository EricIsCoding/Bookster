module ReviewsHelper
    
    def reviewer(params)
        if !params[:book_id]
            params[:id]
        else
            params[:book_id]
        end
    end
end
