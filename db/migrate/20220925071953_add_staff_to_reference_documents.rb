class AddStaffToReferenceDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :reference_documents, :staff_document, :boolean, default: false
  end
end
