class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create]
    
    def index 
        @users = User.all
    end

    def new 
        @user = User.new
    end

    def create 
        @user = User.new(username: params[:user][:username], name: params[:user][:name], bio: params[:user][:bio])
        if @user.save
            params[:user][:friend_ids].each do |friend_id| 
                if friend_id != ""
                    Friend.create(user_id: @user.id, friend_id: friend_id)
                end
            end
            redirect_to login_path
        else 
            flash[:message] = @user.errors.full_messages
            render :new
        end
    end

    def update 
        if @user.update(user_params)
            redirect_to @user
        else 
            render :edit
        end
    end

    def destroy 
        Friend.where(friend_id: @user.id).destroy_all
        @user.destroy

        redirect_to logout_path
    end

    private

    def find_user 
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :name, :bio, friend_ids: [])
    end
end
