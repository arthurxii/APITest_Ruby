class UsersModel
    attr_accessor :id, :user_name, :password

    def user_hash
        {
            id: @id,
            userName: @user_name,
            password: @password
        }
    end 
end 