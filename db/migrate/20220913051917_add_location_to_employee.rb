class AddLocationToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :organization_location_id, :integer
    add_index :employees, :organization_location_id
  end
end
