class Post < ApplicationRecord
    has_many :feedbacks
    has_one :question
    has_many :poly_comments, as: :commentable
end
