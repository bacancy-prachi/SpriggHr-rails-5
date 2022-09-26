class AddAdpCvsIntegrationToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :adp_cvs_integration, :boolean, default: false
  end
end
