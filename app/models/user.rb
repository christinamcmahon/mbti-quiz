class User < ApplicationRecord
    has_many :friends
    has_many :answers, through: :answers_users
    has_many :answers_users
    belongs_to :personality
end
