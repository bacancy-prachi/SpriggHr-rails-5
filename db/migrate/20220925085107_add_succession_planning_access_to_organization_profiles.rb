class AddSuccessionPlanningAccessToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :succession_planning_access, :boolean, default: false
  end
end