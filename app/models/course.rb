class Course < ApplicationRecord
  has_and_belongs_to_many :instructors
  has_many :ratings
end
