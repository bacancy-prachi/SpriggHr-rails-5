class CreateProfileFields < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_fields do |t|
      t.string :field_name
      t.text :description
      t.references :organization
      t.boolean :public, :default => true

      t.timestamps
    end
    add_index :profile_fields, :organization_id
  end
end
