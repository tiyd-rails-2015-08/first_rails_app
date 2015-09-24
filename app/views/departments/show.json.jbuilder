# json.id @department.id
# json.name @department.name
# json.number_of_employees @department.number_of_employees
# json.total_salary @department.total_salary

# json.extract! @department, :id, :name, :number_of_employees, :total_salary
#
# json.peeps @department.employees do |e|
#   json.extract! e, :id, :name, :salary
# end

json.snout_length @pig.snout_length
json.tastiness @pig.tastiness
json.snort @pig.snort
json.get_eaten @pig.get_eaten
