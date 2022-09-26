class AddTfaAccessToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :tfa_access, :boolean, default: false
  end
end
