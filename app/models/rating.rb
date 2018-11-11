class Rating < ApplicationRecord
    belongs_to :course
  
   def average_rating
    self.class.average(:rating)
  end
end
