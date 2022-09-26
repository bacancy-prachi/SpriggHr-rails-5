class CreateEsignDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :esign_documents do |t|
      t.references :organization
      t.string :name
      t.string :description
      t.string :widget_id
      t.string :widget_url
      t.boolean :enabled, default: true

      t.timestamps
    end
    add_index :esign_documents, :organization_id
  end
end
