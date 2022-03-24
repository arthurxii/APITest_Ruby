module Rest 
    class Books
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_books
            self.class.get('/api/v1/Books')
        end 

        def get_book(id)
            self.class.get("/api/v1/Books/#{id}")
        end

        def post_books(book)
            self.class.post('/api/v1/Books', body: book.to_json)
        end
    end 
end 