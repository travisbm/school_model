# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
school_names = ['Iron Yard', 'Steel Yard', 'Aluminum Yard', 'Copper Yard', 'Chrome Yard']

course_names = ['Rails', 'iOS', 'Cobal', 'Fourtran', 'C++', 'Java']

school_names.each do |school_name|

  school = School.new({
      school_name: school_name
      })

  3.times do
    school.teachers.build({
      first_name: Faker::Name.first_name,
      last_name:  Faker::Name.first_name
      })
  end

  school.teachers.each do |teacher|

    10.times do
      teacher.students.build({
        first_name: Faker::Name.first_name,
        last_name:  Faker::Name.first_name
        })

    teacher.build_course({
      course_name: course_names.sample
    })
    end
  end

school.save!
end
