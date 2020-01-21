class User < ApplicationRecord
    has_many :friends
    has_one :answer
end
