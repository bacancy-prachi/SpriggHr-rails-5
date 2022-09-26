class AddBamboohrApiIntegrationToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :bamboohr_api_integration, :boolean, default: false
  end
end
