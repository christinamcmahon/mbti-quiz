class PersonalitiesController < ApplicationController
    before_action :require_login

    def index 
        @personalities = Personality.all
    end

    def show 
        @personality = Personality.find(params[:id])
    end
end
