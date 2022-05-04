class UsersController < ApplicationController
    # skip_before_action :require_login, only:[:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(username:params[:user][:username])
        @user.password = params[:user][:password]
        @user.email = params[:user][:email]
        if @user.save
            session[:user_id] = @user.id
            redirect_to "login_path"
        else
            render :new
        end
    end
end
