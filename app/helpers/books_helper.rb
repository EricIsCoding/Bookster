module BooksHelper

    def release_date(book)
        book.release_date.strftime("%b %e, %Y")
    end

    def creator?(book)
        book.creator == current_user
    end
end
