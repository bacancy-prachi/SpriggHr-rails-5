class CreateCriticalPathAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :critical_path_attachments do |t|
      t.references :critical_path
      t.has_attached_file :attachment
      t.timestamps
    end
    add_index :critical_path_attachments, :critical_path_id
  end
end
