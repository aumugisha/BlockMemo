class Review < ApplicationRecord
belongs_to :course
validates :comment, presence: true
end
