class CreateEsignPrivateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :esign_private_documents do |t|
      t.references :employee
      t.string :name
      t.string :description
      t.boolean :enabled, default: true
      t.string :widget_id
      t.string :widget_url
      t.string :agreement_id

      t.timestamps
    end
    add_index :esign_private_documents, :employee_id
  end
end
