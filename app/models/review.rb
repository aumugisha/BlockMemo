class Review < ApplicationRecord
belongs_to :course
validates :content, presence: true
end
