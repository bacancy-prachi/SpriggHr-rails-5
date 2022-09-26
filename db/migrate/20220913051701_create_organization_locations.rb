class CreateOrganizationLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_locations do |t|
      t.string :location_name
      t.text :description
      t.references :employee
      t.references :organization

      t.timestamps
    end
    add_index :organization_locations, :employee_id
    add_index :organization_locations, :organization_id
  end
end
