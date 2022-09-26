class AddEmployeeVisibleToEmployeeAttachments < ActiveRecord::Migration[5.2]
  def change
    add_column :employee_attachments, :employee_visible, :boolean, default: false
  end
end
