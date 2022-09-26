class CreateArchiveDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :archive_documents do |t|
      t.references :organization
      t.references :employee
      t.string :name
      t.has_attached_file :document
      t.timestamps
    end
    add_index :archive_documents, :organization_id
    add_index :archive_documents, :employee_id
  end
end
