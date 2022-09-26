class AddInfractionAccessToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :infraction_access, :boolean, default: 0
  end
end