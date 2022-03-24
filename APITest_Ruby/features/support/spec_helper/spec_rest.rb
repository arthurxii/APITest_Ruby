module REST
    def users
        Rest::Users.new
    end 
end

module REST
    def activities
        Rest::Activities.new
    end 
end

module REST
    def authors
        Rest::Authors.new
    end 
end

module REST
    def books
        Rest::Books.new
    end 
end

module REST
    def coverphotos
        Rest::CoverPhotos.new
    end 
end