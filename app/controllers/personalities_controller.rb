class PersonalitiesController < ApplicationController
    def index 
        @personalities = Personality.all
    end

    def show 
        @personality = Personality.find(params[:id])
    end
end
