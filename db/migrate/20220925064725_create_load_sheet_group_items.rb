class CreateLoadSheetGroupItems < ActiveRecord::Migration[5.2]
  def change
    create_table :load_sheet_group_items do |t|
      t.references :load_sheet
      t.integer :sheet_position, null: false
      t.string :parent_group
      t.string :child_group

      t.timestamps
    end
    add_index :load_sheet_group_items, :load_sheet_id
  end
end
