class Course < ApplicationRecord
    has_many :chapters
    has_many :courses
end
