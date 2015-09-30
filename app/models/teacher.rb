class Teacher < ActiveRecord::Base
  belongs_to :school
  has_many   :students
  has_one    :course

  def full_name(student)
    full_name = student.first_name + ' ' + student.last_name
  end
end
