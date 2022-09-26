class CreateProgressUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :progress_updates do |t|
      t.string :status
      t.text :note
      t.references :action_item

      t.timestamps
    end
    add_index :progress_updates, :action_item_id
  end
end
