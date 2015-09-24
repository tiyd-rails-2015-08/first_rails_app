class DepartmentsController < ApplicationController
  def index
    render json: Department.all
  end

  def show
    # @department = Department.find(params[:id])
    @pig = Pig.new(params[:snout], params[:taste])
  end
end
