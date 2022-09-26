class CreateTrainingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :training_items do |t|
      t.references :organization
      t.string :item_name
      t.string :vendor
      t.text :description

      t.timestamps
    end
    add_index :training_items, :organization_id
  end
end
