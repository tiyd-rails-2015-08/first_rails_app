class EmployeesController < ApplicationController
  def index
    render json: Employee.all.to_json
  end
end
