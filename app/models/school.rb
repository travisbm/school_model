class School < ActiveRecord::Base
  has_many :courses
  has_many :teachers
  has_many :students
end
