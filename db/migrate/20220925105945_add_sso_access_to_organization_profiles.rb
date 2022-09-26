class AddSsoAccessToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :sso_access, :boolean
  end
end
