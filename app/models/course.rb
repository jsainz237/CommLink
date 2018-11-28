class Course < ApplicationRecord
  has_and_belongs_to_many :instructors
  has_many :ratings
  belongs_to :user

  acts_as_votable
end