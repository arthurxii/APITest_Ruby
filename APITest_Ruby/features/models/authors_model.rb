class AuthorsModel
    attr_accessor :id, :idBook, :first_name, :last_name

    def author_hash
        {
            id: @id,
            idBook: @idBook,
            firstName: @first_name,
            lastName: @last_name
        }
    end 
end 