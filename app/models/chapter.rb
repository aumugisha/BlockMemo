class Chapter < ApplicationRecord
  belongs_to :course
  has_many_attached :photos
end
