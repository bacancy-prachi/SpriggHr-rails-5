class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.text :description
      t.integer :parent_id
      t.references :organization

      t.timestamps
    end
  end
end
