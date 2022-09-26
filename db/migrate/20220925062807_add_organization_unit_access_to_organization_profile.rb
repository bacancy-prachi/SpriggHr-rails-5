class AddOrganizationUnitAccessToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :organization_unit_access, :boolean, default: 0
  end
end
