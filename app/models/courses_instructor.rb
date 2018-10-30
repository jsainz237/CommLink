class CoursesInstructor < ApplicationRecord
  belongs_to :course
  belongs_to :instructor
end
