class EmployeesController < ApplicationController
  def index
    # respond_to do |format|
    #   format.html
    #   format.json {render json: Employee.all.to_json}
    # end
    render json: Employee.all.to_json
  end

  def show
    id = params[:id]
    render json: Employee.find(id).to_json
  end

  def destroy
    id = params[:id]
    Employee.find(id).destroy
    render json: "You are cold-hearted."
  end

  def create
    e = Employee.new(name: params[:name], salary: params[:salary])
    if e.save
      render json: e.to_json
    else
      render json: e.errors
    end
  end
end
