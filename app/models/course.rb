class Course < ApplicationRecord

  has_many :chapters, dependent: :destroy
  has_many :reviews, dependent: :destroy

end
