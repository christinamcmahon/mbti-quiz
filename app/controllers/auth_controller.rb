class AuthController < ApplicationController 
    def login
    end

    def authenticate
        @user = User.find_by(name: params[:auth][:name])
        if @user 
            sessions[:user_id] = @user.id
            redirect_to personalities_path
        else
            flash[:message] = "Incorrect Information"
            render :login
        end
    end

    def logout
        session.clear
        redirect_to login_path
    end
end