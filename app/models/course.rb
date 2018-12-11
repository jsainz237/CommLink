class Course < ApplicationRecord

  #scope :by_category, -> categoryName { where(categoryName: categoryName) }

  has_and_belongs_to_many :instructors
  has_many :ratings

  acts_as_votable
end