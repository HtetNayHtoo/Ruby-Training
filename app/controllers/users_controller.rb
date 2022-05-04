class UsersController < ApplicationController
    # skip_before_action :require_login, only:[:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(username:params[:user][:username])
        @user.password = params[:user][:password]
        if @user.save
            session[:user_id] = @user.id
            link_to @sessions.new
        else
            render :new
        end
    end
end
