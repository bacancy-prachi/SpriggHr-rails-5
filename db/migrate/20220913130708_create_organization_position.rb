class CreateOrganizationPosition < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_positions do |t|
      t.references :organization
      t.string :name
      t.text :desc

      t.timestamps
    end
    add_index :organization_positions, :organization_id
  end
end
