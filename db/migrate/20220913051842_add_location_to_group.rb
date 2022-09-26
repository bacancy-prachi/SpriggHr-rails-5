class AddLocationToGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :organization_location_id, :integer
    add_index :groups, :organization_location_id
  end
end
