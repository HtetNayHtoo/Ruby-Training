class UsersService
    class << self
        def initialize
            @user = UsersRepository.all
        end

        def createUser(user)
            @create_user = UsersRepository.createUser(user)
        end
    end
end