class Department < ActiveRecord::Base
  has_many :employees

  def give_raise(amount)
    employees.each {|e| e.give_raise(amount)}
  end

  def number_of_employees
    employees.count
  end

  def total_salary
    employees.reduce(0.0) {|sum, e| sum + e.salary}
  end

end
