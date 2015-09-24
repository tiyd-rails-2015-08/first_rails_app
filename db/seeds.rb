# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

start_time = Time.now

1000.times do |i|
  puts "Done with #{i} Departments" if i % 100 == 0
  Department.create!(name: Faker::Company.name + rand(1000000).to_s)
end

all_departments = Department.all
10000.times do |i|
  puts "Done with #{i} Employees" if i % 100 == 0
  Employee.create!(name: Faker::Name.name + rand(1000000).to_s,
      salary: rand(10000..100000),
      department: all_departments.sample)
end

puts "Took #{Time.now - start_time} seconds."
