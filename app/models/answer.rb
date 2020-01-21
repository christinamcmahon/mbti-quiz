class Answer < ApplicationRecord
    has_many :answers_users
    has_many :users, through: :answers_users
end
