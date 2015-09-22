require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
  test "department can get raise" do
    d = Department.create(name: "Development")
    r = Employee.create(name: "Ruti", salary: 1000001)
    dame = Employee.create(name: "Da-Me", salary: 500000000)
    r.department = d
    r.save
    d.give_raise(10000)
    assert_equal 1010001, r.reload.salary
    assert_equal 500000000, dame.reload.salary
  end
end
