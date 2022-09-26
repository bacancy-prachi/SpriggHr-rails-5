class AddActiveToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :active, :boolean, default: true
  end
end
