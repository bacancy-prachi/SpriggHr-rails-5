class AddApiAccessToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :api_access, :boolean, default: false
  end
end
