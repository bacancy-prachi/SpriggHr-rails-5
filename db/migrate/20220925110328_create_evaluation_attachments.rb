class CreateEvaluationAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_attachments do |t|
      t.references :evaluation
      t.attachment :attachment
      t.integer :uploader_id

      t.timestamps
    end
    add_index :evaluation_attachments, :evaluation_id
  end
end
