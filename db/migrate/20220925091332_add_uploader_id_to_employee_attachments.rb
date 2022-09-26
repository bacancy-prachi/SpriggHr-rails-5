class AddUploaderIdToEmployeeAttachments < ActiveRecord::Migration[5.2]
  def change
    add_column :employee_attachments, :uploader_id, :integer
    add_index :employee_attachments, :uploader_id
  end
end
