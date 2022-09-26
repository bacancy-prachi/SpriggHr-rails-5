class CreateEmployeeAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_attachments do |t|
      t.references :employee

      t.timestamps
    end
    add_index :employee_attachments, :employee_id
    add_attachment :employee_attachments, :upload
  end
end
