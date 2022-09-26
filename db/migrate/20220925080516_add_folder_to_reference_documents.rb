class AddFolderToReferenceDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :reference_documents, :reference_document_folder_id, :integer
    add_index :reference_documents, :reference_document_folder_id
  end
end
