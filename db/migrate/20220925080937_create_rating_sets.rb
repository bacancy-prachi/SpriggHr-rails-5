class CreateRatingSets < ActiveRecord::Migration[5.2]
  def change
    create_table :rating_sets do |t|
      t.string :name, null: true
      t.references :organization, null: false
      t.timestamps
    end
    add_index :rating_sets, :organization_id
  end
end
