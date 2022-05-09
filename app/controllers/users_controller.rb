class UsersController < ApplicationController
    # skip_before_action :require_login, only:[:new, :create]
    
    def index
        @user = User.new
    end

    def create
            @user = User.new(username:params[:user][:username])
            @user.password = params[:user][:password]
            @user.email = params[:user][:email]
            @create_user = UsersService.createUser(@user)
            if @create_user
                session[:user_id] = @user.id
                redirect_to login_path
            else
                render :index
            end
    end

    # def create
    #     @user = User.new(username:params[:user][:username])
    #     @user.password = params[:user][:password]
    #     @user.email = params[:user][:email]
    #     if @user.save
    #         session[:user_id] = @user.id
    #         redirect_to "sessions/new"
    #     else
    #         render :new
    #     end
    # end
end
