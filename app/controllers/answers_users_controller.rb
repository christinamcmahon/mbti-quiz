class AnswersUsersController < ApplicationController
    def question1 
        @answer = Answer.all[0]
        
    end

    def create_q1

        # @answer = Answer.all[0]

        @answers_user = AnswersUser.new(user_id: current_user.id, response: params["/quiz_question_1"]["response"])
        byebug
        if @answers_user.save 
            redirect_to quiz_question_2_path
        else
            render :question1
        end
    end

    def question2
        @answer = Answer.all[1]
        @answers_user =  AnswersUser.new
    end

    def create_q2
        @answers_user = AnswersUser.new(user_id: current_user.id, response: session[:response])
        if @answers_user.save 
            redirect_to quiz_question_3_path
        else
            render :question2
        end
    end

    def question3
        @answer = Answer.all[2]
        @answers_user =  AnswersUser.new
    end

    def create_q3
        @answers_user = AnswersUser.new(user_id: current_user.id, response: session[:response])
        if @answers_user.save 
            redirect_to quiz_question_4_path
        else
            render :question3
        end
    end

    def question4
        @answer = Answer.all[3]
        @answers_user =  AnswersUser.new
    end

    def create_q4
        @answers_user = AnswersUser.new(user_id: current_user.id, response: session[:response])
        if @answers_user.save 
            redirect_to user_path(current_user)
        else
            render :question4
        end
    end
end
