class Post < ApplicationRecord
    has_many :feedbacks
    has_one :question
end
