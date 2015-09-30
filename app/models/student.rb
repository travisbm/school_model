class Student < ActiveRecord::Base
  belongs_to :teacher

  def full_name(student)
    full_name = student.first_name + ' ' + student.last_name
  end
end
