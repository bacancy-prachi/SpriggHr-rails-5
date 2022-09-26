class AddOrganizationUnitIdToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :organization_unit_id, :integer
  end
end
