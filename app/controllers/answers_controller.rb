class AnswersController < ApplicationController
    def new 
        @answer = Answer.new
    end

    def create 
        @answer = Answer.new(answer_params)
        if @answer.save 
            # redirect_to personality_path(@answer)???
        else 
            render :new
        end
    end

    private

    def answer_params
        params.require(:answer).permit(:introverted, :observant, :thinking, :judging)
    end
end
