class ApplicationController < ActionController::Base
    helper_method :current_user
    helper_method :logged_in?
    helper_method :require_login

    def logged_in?
        session[:user_id]
    end

    def require_login
        if !logged_in?
            redirect_to login_path
        end
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if
        session[:user_id]
    end

    config.time_zone = "America/Sao_Paulo" 
    # config.active_record.default_timezone = :local
end
