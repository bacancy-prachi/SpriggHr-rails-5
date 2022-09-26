class AddLastEditedToEmployeeProfileFields < ActiveRecord::Migration[5.2]
  def change
    add_column :employee_profile_fields, :editor_id, :integer
    add_index :employee_profile_fields, :editor_id
  end
end
