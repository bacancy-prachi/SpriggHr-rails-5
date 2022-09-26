class AddSlackAccessToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :slack_access, :boolean, default: false
  end
end
