class Instructor < ApplicationRecord
  has_and_belongs_to_many :courses
  mount_uploader :image, ImageUploader
end
