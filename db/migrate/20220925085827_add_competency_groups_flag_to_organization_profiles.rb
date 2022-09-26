class AddCompetencyGroupsFlagToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :competency_groups_enabled, :boolean, default: false
  end
end
