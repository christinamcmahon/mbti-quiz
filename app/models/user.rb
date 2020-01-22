class User < ApplicationRecord
    has_many :friends
    has_many :answers, through: :answers_users
    has_many :answers_users
    belongs_to :personality, optional: true

    validates :name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :bio, presence: true

    def calculatePersonality

    end

    def self.personality 
        if self.personality_id != nil
            return Personality.find_by(self.personality_id)
        end
    end
end
