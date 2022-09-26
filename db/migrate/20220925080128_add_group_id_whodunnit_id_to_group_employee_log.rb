class AddGroupIdWhodunnitIdToGroupEmployeeLog < ActiveRecord::Migration[5.2]
  def change
    rename_column :group_employee_logs, :email, :whodunnit_email
    add_column :group_employee_logs, :whodunnit_id, :integer
    add_column :group_employee_logs, :group_id, :integer
  end
end
