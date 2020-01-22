class AnswersUser < ApplicationRecord
    belongs_to :user 
    belongs_to :answer
end
