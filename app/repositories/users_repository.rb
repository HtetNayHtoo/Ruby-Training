class UsersRepository
    class << self
        def initialize
            @user = User.all
        end

        def createUser(user)
            @create_user = user.save
        end
    end
end