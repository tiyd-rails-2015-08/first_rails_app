class AddEmployeeFields < ActiveRecord::Migration
  def change
    add_column :employees, :review, :text
    add_column :employees, :satisfactory, :boolean, default: true
  end
end
