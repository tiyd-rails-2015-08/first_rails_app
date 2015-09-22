class AddCompany < ActiveRecord::Migration
  def change
    add_column :departments, :company_name, :string
  end
end
