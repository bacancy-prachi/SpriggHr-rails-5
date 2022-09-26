class AddEsignAccessToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :esign_access, :boolean, default: false
  end
end
