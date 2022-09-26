class CreateReferenceDocumentFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :reference_document_folders do |t|
      t.references :organization, null: false, index: true
      t.string :name, null: false
      t.timestamps
    end
  end
end
