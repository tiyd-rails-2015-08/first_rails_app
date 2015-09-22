class Department < ActiveRecord::Base
  has_many :employees

  def give_raise(amount)
    employees.each {|e| e.give_raise(amount)}
  end

end
