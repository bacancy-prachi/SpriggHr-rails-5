class CreateEmployeeToReadFolderAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_to_read_folder_attachments do |t|
      t.references :employee

      t.timestamps
    end
    add_index :employee_to_read_folder_attachments, :employee_id
    add_attachment :employee_to_read_folder_attachments, :upload
  end
end
