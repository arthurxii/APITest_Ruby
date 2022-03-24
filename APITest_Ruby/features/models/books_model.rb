class BooksModel
    attr_accessor :id, :title, :description, :pageCount, :excerpt, :publishDate

    def book_hash
        {
            id: @id,
            title: @title,
            description: @description,
            pageCount: @page_count,
            excerpt: @excerpt,
            publishDate: @publish_date
        }
    end 
end 