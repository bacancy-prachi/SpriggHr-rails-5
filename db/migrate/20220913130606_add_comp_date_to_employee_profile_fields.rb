class AddCompDateToEmployeeProfileFields < ActiveRecord::Migration[5.2]
  def change
    add_column :employee_profile_fields, :comp_date, :date
  end
end
