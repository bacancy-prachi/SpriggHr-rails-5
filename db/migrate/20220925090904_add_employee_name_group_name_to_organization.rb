class AddEmployeeNameGroupNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :group_name, :string, default: 'Team'
    add_column :organizations, :employee_name, :string, default: 'Employee'
  end
end
