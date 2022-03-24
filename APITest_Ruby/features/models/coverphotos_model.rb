class CoverPhotosModel
    attr_accessor :id, :idBook, :url

    def coverphotos_hash
        {
            id: @id,
            idBook: @idBook,
            url: @url
        }
    end 
end 