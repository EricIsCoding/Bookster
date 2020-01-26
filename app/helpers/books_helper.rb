module BooksHelper

    def release_date(book)
        book.release_date.strftime("%b %e, %Y")
    end
end
