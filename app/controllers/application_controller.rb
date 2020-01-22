class ApplicationController < ActionController::Base
    helper_method :logged_in?, :require_login

    def require_login
        if !logged_in?
            redirect_to login_path
        end
    end

    def logged_in?
        !!session[:user_id]
    end
end
