class CreateLoadSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :load_sheets do |t|
      t.integer :organization_id, :null => false
      t.timestamps
    end
  end
end