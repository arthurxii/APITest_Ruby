module Rest 
    class CoverPhotos
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_coverphotos
            self.class.get('/api/v1/CoverPhotos')
        end 

        def get_coverphoto(id)
            self.class.get("/api/v1/CoverPhotos/#{id}")
        end

        def get_coverphotos_idBook(idBook)
            self.class.get("/api/v1/CoverPhotos/books/covers/#{idBook}")
        end 

        def post_coverphotos(coverphoto)
            self.class.post('/api/v1/CoverPhotos', body: coverphoto.to_json)
        end
    end 
end 