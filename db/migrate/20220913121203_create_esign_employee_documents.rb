class CreateEsignEmployeeDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :esign_employee_documents do |t|
      t.references :esign_document
      t.references :employee
      t.string :agreement_id

      t.timestamps
    end
    add_index :esign_employee_documents, :esign_document_id
    add_index :esign_employee_documents, :employee_id
  end
end
