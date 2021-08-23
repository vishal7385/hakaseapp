class Teacher < ApplicationRecord
    has_many :subjects
    has_many :studeents, through: :subjects
end
