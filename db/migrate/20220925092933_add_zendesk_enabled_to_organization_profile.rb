class AddZendeskEnabledToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :zendesk_enabled, :boolean, null: false, default: true
  end
end
