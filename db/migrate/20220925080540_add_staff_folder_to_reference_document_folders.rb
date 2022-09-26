class AddStaffFolderToReferenceDocumentFolders < ActiveRecord::Migration[5.2]
  def change
    add_column :reference_document_folders, :staff_folder, :boolean, null: false, default: false
  end
end
