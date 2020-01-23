class User < ApplicationRecord
    has_many :friends, dependent: :destroy
    has_many :answers, through: :answers_users
    has_many :answers_users
    belongs_to :personality, optional: true

    validates :name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :bio, presence: true

    def calculate_personality
        answer1 = AnswersUser.find_by(user_id: self.id, answer_id: 1).response
        answer2 = AnswersUser.find_by(user_id: self.id, answer_id: 2).response
        answer3 = AnswersUser.find_by(user_id: self.id, answer_id: 3).response
        answer4 = AnswersUser.find_by(user_id: self.id, answer_id: 4).response
        personality_string = answer1 + answer2 + answer3 + answer4 
        personality = Personality.find_by(name: personality_string)
        self.personality_id = personality.id
        personality
    end

    def personality 
        if self.personality_id
            return Personality.find_by(id: self.personality_id)
        else
            return "TBD"
        end
    end
end
