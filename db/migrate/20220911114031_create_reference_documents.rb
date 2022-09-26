class CreateReferenceDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :reference_documents do |t|
      t.string :title
      t.text :description
      t.references :organization
      t.has_attached_file :document

      t.timestamps
    end
    add_index :reference_documents, :organization_id
  end
end
