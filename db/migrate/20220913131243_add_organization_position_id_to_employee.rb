class AddOrganizationPositionIdToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :organization_position_id, :integer
  end
end
