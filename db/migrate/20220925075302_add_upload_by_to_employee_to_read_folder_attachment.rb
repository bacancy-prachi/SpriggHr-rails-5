class AddUploadByToEmployeeToReadFolderAttachment < ActiveRecord::Migration[5.2]
  def change
    add_column :employee_to_read_folder_attachments, :upload_by, :string
  end
end
