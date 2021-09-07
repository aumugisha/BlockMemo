class Course < ApplicationRecord

  has_many :chapters, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :picture

end
