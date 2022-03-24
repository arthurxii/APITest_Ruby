module Rest 
    class Authors
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_authors
            self.class.get('/api/v1/Authors')
        end 

        def get_author(id)
            self.class.get("/api/v1/Authors/#{id}")
        end

        def get_authors_idBook(idBook)
            self.class.get("/api/v1/Authors/authors/books/#{idBook}")
        end 

        def post_authors(author)
            self.class.post('/api/v1/Authors', body: author.to_json)
        end
    end 
end 