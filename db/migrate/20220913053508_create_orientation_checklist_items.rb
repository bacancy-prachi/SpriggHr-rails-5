class CreateOrientationChecklistItems < ActiveRecord::Migration[5.2]
  def change
    create_table :orientation_checklist_items do |t|
      t.timestamps null: false
      t.integer :orientation_checklist_id
      t.text :description
      t.integer :position
    end
  end
end
