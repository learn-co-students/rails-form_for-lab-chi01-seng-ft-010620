# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
SchoolClass.destroy_all

30.times do
  Student.create(first_name:Faker::Hipster.word, last_name:Faker::Hipster.word)
end

30.times do
  SchoolClass.create(title:Faker::Educator.course_name, room_number:Faker::Number.number(digits: 3))
end
