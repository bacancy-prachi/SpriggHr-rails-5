class CreateGoalAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_attachments do |t|
      t.references :goal
      t.attachment :upload
      t.integer :uploader_id

      t.timestamps
    end
    add_index :goal_attachments, :goal_id
  end
end
