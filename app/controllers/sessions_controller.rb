class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(username: params[:username])

        if Authentication.new(user).authenticate(params:[password])
            redirect_to articles_path(user)
        else
            redirect_to login_path, notice: "Wrong Username or Password!"
        end
    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to articles_path(user)
        else
            redirect_to login_path, notice: "Wrong Username or Password!"
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end

end
